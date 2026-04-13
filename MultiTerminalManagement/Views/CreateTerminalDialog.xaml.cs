using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Interop;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public class ColorOption
    {
        public string Color { get; set; }
        public string Name { get; set; }
    }

    public partial class CreateTerminalDialog : Window
    {
        private readonly List<string> _existingTerminalNames;
        private List<TerminalProfile> _profiles;
        private TerminalProfile _selectedProfile;

        public string TerminalName { get; private set; }
        public TerminalType TerminalType { get; private set; }
        public string WorkingDirectory { get; private set; }
        public string StartupCommand { get; private set; }
        public string AccentColor { get; private set; }

        // SSH
        public string SshHost { get; private set; }
        public int SshPort { get; private set; } = 22;
        public string SshUser { get; private set; }
        public string SshKeyPath { get; private set; }
        public string SshPassword { get; private set; }

        public CreateTerminalDialog(IEnumerable<string> existingTerminalNames = null)
        {
            InitializeComponent();
            _existingTerminalNames = existingTerminalNames?.ToList() ?? new List<string>();

            LoadProfiles();
            NameBox.Focus();
            NameBox.SelectAll();
        }

        private void LoadProfiles()
        {
            _profiles = TerminalProfileStore.Load();

            // Keep "(None)" as first item, clear the rest
            while (ProfileCombo.Items.Count > 1)
                ProfileCombo.Items.RemoveAt(1);

            foreach (var p in _profiles)
                ProfileCombo.Items.Add(new ComboBoxItem { Content = p.Name, Tag = p });
        }

        private void ProfileCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ProfileCombo.SelectedIndex <= 0)
            {
                _selectedProfile = null;
                return;
            }
            if (ProfileCombo.SelectedItem is ComboBoxItem ci && ci.Tag is TerminalProfile profile)
            {
                _selectedProfile = profile;
                NameBox.Text = GetNextName(profile.Name);
                TypeCombo.SelectedIndex = profile.TerminalType switch
                {
                    TerminalType.PowerShell => 1,
                    TerminalType.SSH => 2,
                    _ => 0
                };
                PathBox.Text = profile.DefaultWorkingDirectory ?? "";

                // Fill SSH fields from profile
                SshHostBox.Text = profile.SshHost ?? "";
                SshPortBox.Text = profile.SshPort > 0 ? profile.SshPort.ToString() : "22";
                SshUserBox.Text = profile.SshUser ?? "";
                SshKeyBox.Text = profile.SshKeyPath ?? "";
                SshPasswordBox.Password = MultiTerminalManagement.Helpers.PasswordProtector
                    .Unprotect(profile.SshPasswordEncrypted) ?? "";
            }
        }

        /// <summary>
        /// Generate next auto-incremented name: "Takako 01", "Takako 02", etc.
        /// </summary>
        private string GetNextName(string baseName)
        {
            var pattern = new Regex(
                @"^" + Regex.Escape(baseName) + @"\s+(\d+)$",
                RegexOptions.IgnoreCase);

            int maxNum = 0;
            foreach (var name in _existingTerminalNames)
            {
                var match = pattern.Match(name);
                if (match.Success && int.TryParse(match.Groups[1].Value, out int num))
                {
                    if (num > maxNum) maxNum = num;
                }
            }

            return $"{baseName} {(maxNum + 1):D2}";
        }

        private void TypeCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (SshPanel == null) return; // not yet initialized
            bool isSsh = TypeCombo.SelectedIndex == 2;
            SshPanel.Visibility = isSsh ? Visibility.Visible : Visibility.Collapsed;
            DirLabel.Visibility = isSsh ? Visibility.Collapsed : Visibility.Visible;
            PathBox.Visibility = isSsh ? Visibility.Collapsed : Visibility.Visible;
            DirButtons.Visibility = isSsh ? Visibility.Collapsed : Visibility.Visible;
        }

        private void Browse_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new System.Windows.Forms.FolderBrowserDialog
            {
                Description = "Select working directory",
                ShowNewFolderButton = false
            };

            var helper = new WindowInteropHelper(this);
            var win32Window = new Win32Window(helper.Handle);

            if (dialog.ShowDialog(win32Window) == System.Windows.Forms.DialogResult.OK)
            {
                PathBox.Text = dialog.SelectedPath;
            }
        }

        private void ClearPath_Click(object sender, RoutedEventArgs e)
        {
            PathBox.Text = "";
        }

        private void BrowseSshKey_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new Microsoft.Win32.OpenFileDialog
            {
                Title = "Select SSH Key File",
                Filter = "All Files (*.*)|*.*|PEM Files (*.pem)|*.pem",
                InitialDirectory = System.IO.Path.Combine(
                    Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), ".ssh")
            };
            if (dialog.ShowDialog(this) == true)
                SshKeyBox.Text = dialog.FileName;
        }

        private void GenerateSshKey_Click(object sender, RoutedEventArgs e)
        {
            var helper = MultiTerminalManagement.Helpers.SshKeyHelper.DefaultKeyExists();
            if (!helper)
            {
                if (!MultiTerminalManagement.Helpers.SshKeyHelper.GenerateDefaultKey(out string err))
                {
                    MessageBox.Show($"Failed to generate SSH key:\n{err}", "Error",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
            }

            var pubKey = MultiTerminalManagement.Helpers.SshKeyHelper.ReadPublicKey();
            SshKeyBox.Text = MultiTerminalManagement.Helpers.SshKeyHelper.DefaultPrivateKeyPath;

            if (!string.IsNullOrEmpty(pubKey))
            {
                try { Clipboard.SetText(pubKey); } catch { }

                var user = string.IsNullOrWhiteSpace(SshUserBox.Text) ? "USER" : SshUserBox.Text.Trim();
                var host = string.IsNullOrWhiteSpace(SshHostBox.Text) ? "HOST" : SshHostBox.Text.Trim();
                MessageBox.Show(
                    "SSH key is ready. Public key has been copied to clipboard.\n\n" +
                    "To enable password-less login, run this on the remote server:\n\n" +
                    "  mkdir -p ~/.ssh && chmod 700 ~/.ssh\n" +
                    "  echo '<PASTE_PUBLIC_KEY>' >> ~/.ssh/authorized_keys\n" +
                    "  chmod 600 ~/.ssh/authorized_keys\n\n" +
                    $"Or from any machine with ssh access:\n\n" +
                    $"  type \"%USERPROFILE%\\.ssh\\id_ed25519.pub\" | ssh {user}@{host} \"mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys\"",
                    "SSH Key Ready", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        private void Create_Click(object sender, RoutedEventArgs e)
        {
            TerminalName = string.IsNullOrWhiteSpace(NameBox.Text) ? "Terminal" : NameBox.Text.Trim();
            TerminalType = TypeCombo.SelectedIndex switch
            {
                1 => TerminalType.PowerShell,
                2 => TerminalType.SSH,
                _ => TerminalType.Cmd
            };

            string path = PathBox.Text?.Trim();
            WorkingDirectory = string.IsNullOrEmpty(path) ? null : path;

            // SSH validation & fields
            if (TerminalType == TerminalType.SSH)
            {
                if (string.IsNullOrWhiteSpace(SshHostBox.Text))
                {
                    MessageBox.Show("SSH Host is required.", "Validation", MessageBoxButton.OK, MessageBoxImage.Warning);
                    SshHostBox.Focus();
                    return;
                }
                SshHost = SshHostBox.Text.Trim();
                SshPort = int.TryParse(SshPortBox.Text?.Trim(), out int port) && port > 0 ? port : 22;
                SshUser = string.IsNullOrWhiteSpace(SshUserBox.Text) ? null : SshUserBox.Text.Trim();
                SshKeyPath = string.IsNullOrWhiteSpace(SshKeyBox.Text) ? null : SshKeyBox.Text.Trim();
                SshPassword = string.IsNullOrEmpty(SshPasswordBox.Password) ? null : SshPasswordBox.Password;
            }

            // Read StartupCommand and AccentColor from profile
            if (_selectedProfile != null)
            {
                StartupCommand = _selectedProfile.StartupCommand;
                AccentColor = _selectedProfile.IconColor;
            }

            DialogResult = true;
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }

        private class Win32Window : System.Windows.Forms.IWin32Window
        {
            public System.IntPtr Handle { get; }
            public Win32Window(System.IntPtr handle) { Handle = handle; }
        }
    }
}
