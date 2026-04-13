using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public partial class ProfileManagerDialog : Window
    {
        private List<TerminalProfile> _profiles;
        private TerminalProfile _selected;

        public ProfileManagerDialog()
        {
            InitializeComponent();
            _profiles = TerminalProfileStore.Load();
            RefreshList();
        }

        private void RefreshList()
        {
            ProfileList.Items.Clear();
            foreach (var p in _profiles)
                ProfileList.Items.Add(p.Name);

            if (_selected != null)
            {
                int idx = _profiles.IndexOf(_selected);
                if (idx >= 0) ProfileList.SelectedIndex = idx;
            }
        }

        private void ProfileList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int idx = ProfileList.SelectedIndex;
            if (idx < 0 || idx >= _profiles.Count)
            {
                _selected = null;
                ClearForm();
                return;
            }

            _selected = _profiles[idx];
            ProfNameBox.Text = _selected.Name;
            ProfTypeCombo.SelectedIndex = _selected.TerminalType switch
            {
                TerminalType.PowerShell => 1,
                TerminalType.SSH => 2,
                _ => 0
            };
            ProfDirBox.Text = _selected.DefaultWorkingDirectory ?? "";
            ProfCmdBox.Text = _selected.StartupCommand ?? "";

            // SSH fields
            ProfSshHostBox.Text = _selected.SshHost ?? "";
            ProfSshPortBox.Text = _selected.SshPort > 0 ? _selected.SshPort.ToString() : "22";
            ProfSshUserBox.Text = _selected.SshUser ?? "";
            ProfSshKeyBox.Text = _selected.SshKeyPath ?? "";
            ProfSshPasswordBox.Password = MultiTerminalManagement.Helpers.PasswordProtector
                .Unprotect(_selected.SshPasswordEncrypted) ?? "";

            // Select color
            for (int i = 0; i < ProfColorCombo.Items.Count; i++)
            {
                if (ProfColorCombo.Items[i] is ComboBoxItem ci && ci.Content?.ToString() == _selected.IconColor)
                {
                    ProfColorCombo.SelectedIndex = i;
                    break;
                }
            }
        }

        private void ClearForm()
        {
            ProfNameBox.Text = "";
            ProfTypeCombo.SelectedIndex = 0;
            ProfDirBox.Text = "";
            ProfCmdBox.Text = "";
            ProfColorCombo.SelectedIndex = 0;
            ProfSshHostBox.Text = "";
            ProfSshPortBox.Text = "22";
            ProfSshUserBox.Text = "";
            ProfSshKeyBox.Text = "";
            ProfSshPasswordBox.Password = "";
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            var p = new TerminalProfile { Name = "New Profile" };
            _profiles.Add(p);
            _selected = p;
            RefreshList();
            ProfileList.SelectedIndex = _profiles.Count - 1;
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (_selected == null) return;
            _profiles.Remove(_selected);
            _selected = null;
            TerminalProfileStore.Save(_profiles);
            RefreshList();
            ClearForm();
        }

        private void ProfTypeCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ProfSshPanel == null) return;
            ProfSshPanel.Visibility = ProfTypeCombo.SelectedIndex == 2 ? Visibility.Visible : Visibility.Collapsed;
        }

        private void ProfBrowseSshKey_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new Microsoft.Win32.OpenFileDialog
            {
                Title = "Select SSH Key File",
                Filter = "All Files (*.*)|*.*|PEM Files (*.pem)|*.pem",
                InitialDirectory = System.IO.Path.Combine(
                    Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), ".ssh")
            };
            if (dialog.ShowDialog(this) == true)
                ProfSshKeyBox.Text = dialog.FileName;
        }

        private void ProfGenerateSshKey_Click(object sender, RoutedEventArgs e)
        {
            if (!MultiTerminalManagement.Helpers.SshKeyHelper.DefaultKeyExists())
            {
                if (!MultiTerminalManagement.Helpers.SshKeyHelper.GenerateDefaultKey(out string err))
                {
                    MessageBox.Show($"Failed to generate SSH key:\n{err}", "Error",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
            }

            var pubKey = MultiTerminalManagement.Helpers.SshKeyHelper.ReadPublicKey();
            ProfSshKeyBox.Text = MultiTerminalManagement.Helpers.SshKeyHelper.DefaultPrivateKeyPath;

            if (!string.IsNullOrEmpty(pubKey))
            {
                try { Clipboard.SetText(pubKey); } catch { }
                var user = string.IsNullOrWhiteSpace(ProfSshUserBox.Text) ? "USER" : ProfSshUserBox.Text.Trim();
                var host = string.IsNullOrWhiteSpace(ProfSshHostBox.Text) ? "HOST" : ProfSshHostBox.Text.Trim();
                MessageBox.Show(
                    "SSH key is ready. Public key copied to clipboard.\n\n" +
                    "On the remote server, run:\n" +
                    "  mkdir -p ~/.ssh && chmod 700 ~/.ssh\n" +
                    "  echo '<PASTE_PUBLIC_KEY>' >> ~/.ssh/authorized_keys\n" +
                    "  chmod 600 ~/.ssh/authorized_keys\n\n" +
                    $"Or one-line from this PC:\n" +
                    $"  type \"%USERPROFILE%\\.ssh\\id_ed25519.pub\" | ssh {user}@{host} \"mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys\"",
                    "SSH Key Ready", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (_selected == null) return;
            _selected.Name = ProfNameBox.Text?.Trim() ?? "Profile";
            _selected.TerminalType = ProfTypeCombo.SelectedIndex switch
            {
                1 => TerminalType.PowerShell,
                2 => TerminalType.SSH,
                _ => TerminalType.Cmd
            };
            _selected.DefaultWorkingDirectory = string.IsNullOrWhiteSpace(ProfDirBox.Text) ? null : ProfDirBox.Text.Trim();
            _selected.StartupCommand = string.IsNullOrWhiteSpace(ProfCmdBox.Text) ? null : ProfCmdBox.Text.Trim();

            // SSH fields
            _selected.SshHost = string.IsNullOrWhiteSpace(ProfSshHostBox.Text) ? null : ProfSshHostBox.Text.Trim();
            _selected.SshPort = int.TryParse(ProfSshPortBox.Text?.Trim(), out int port) && port > 0 ? port : 22;
            _selected.SshUser = string.IsNullOrWhiteSpace(ProfSshUserBox.Text) ? null : ProfSshUserBox.Text.Trim();
            _selected.SshKeyPath = string.IsNullOrWhiteSpace(ProfSshKeyBox.Text) ? null : ProfSshKeyBox.Text.Trim();
            _selected.SshPasswordEncrypted = string.IsNullOrEmpty(ProfSshPasswordBox.Password)
                ? null
                : MultiTerminalManagement.Helpers.PasswordProtector.Protect(ProfSshPasswordBox.Password);

            if (ProfColorCombo.SelectedItem is ComboBoxItem ci)
                _selected.IconColor = ci.Content?.ToString() ?? "#0e639c";

            TerminalProfileStore.Save(_profiles);
            RefreshList();
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
