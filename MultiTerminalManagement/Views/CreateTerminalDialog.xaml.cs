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
                TypeCombo.SelectedIndex = profile.TerminalType == TerminalType.PowerShell ? 1 : 0;
                PathBox.Text = profile.DefaultWorkingDirectory ?? "";
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

        private void Create_Click(object sender, RoutedEventArgs e)
        {
            TerminalName = string.IsNullOrWhiteSpace(NameBox.Text) ? "Terminal" : NameBox.Text.Trim();
            TerminalType = TypeCombo.SelectedIndex == 0 ? TerminalType.Cmd : TerminalType.PowerShell;

            string path = PathBox.Text?.Trim();
            WorkingDirectory = string.IsNullOrEmpty(path) ? null : path;

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
