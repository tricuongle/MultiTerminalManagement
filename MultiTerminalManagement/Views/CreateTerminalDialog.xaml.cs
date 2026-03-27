using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Interop;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public partial class CreateTerminalDialog : Window
    {
        // Profile support added
        private readonly ObservableCollection<SavedPath> _savedPaths = new ObservableCollection<SavedPath>();
        private readonly List<string> _existingTerminalNames;

        public string TerminalName { get; private set; }
        public TerminalType TerminalType { get; private set; }
        public string WorkingDirectory { get; private set; }

        public CreateTerminalDialog(IEnumerable<string> existingTerminalNames = null)
        {
            InitializeComponent();
            _existingTerminalNames = existingTerminalNames?.ToList() ?? new List<string>();
            SavedPathsList.ItemsSource = _savedPaths;
            LoadSavedPaths();
            LoadProfiles();
            NameBox.Focus();
            NameBox.SelectAll();
        }

        private void LoadProfiles()
        {
            // Keep "(None)" as first item, clear the rest
            while (ProfileCombo.Items.Count > 1)
                ProfileCombo.Items.RemoveAt(1);

            foreach (var p in TerminalProfileStore.Load())
                ProfileCombo.Items.Add(new ComboBoxItem { Content = p.Name, Tag = p });
        }

        private void ProfileCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ProfileCombo.SelectedIndex <= 0) return;
            if (ProfileCombo.SelectedItem is ComboBoxItem ci && ci.Tag is TerminalProfile profile)
            {
                NameBox.Text = GetNextName(profile.Name);
                TypeCombo.SelectedIndex = profile.TerminalType == TerminalType.PowerShell ? 1 : 0;
                PathBox.Text = profile.DefaultWorkingDirectory ?? "";
            }
        }

        private void ManageProfiles_Click(object sender, RoutedEventArgs e)
        {
            var dlg = new ProfileManagerDialog { Owner = this };
            dlg.ShowDialog();
            LoadProfiles();
        }

        private void LoadSavedPaths()
        {
            _savedPaths.Clear();
            foreach (var sp in PathStore.Load())
                _savedPaths.Add(sp);
        }

        /// <summary>
        /// Generate next auto-incremented name: "Takako 01", "Takako 02", etc.
        /// </summary>
        private string GetNextName(string baseName)
        {
            // Find all existing names that match "baseName NN" pattern
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

                // Auto-fill alias from folder name
                var folderName = System.IO.Path.GetFileName(dialog.SelectedPath.TrimEnd('\\', '/'));
                if (!string.IsNullOrEmpty(folderName))
                    AliasBox.Text = folderName;
            }
        }

        private void ClearPath_Click(object sender, RoutedEventArgs e)
        {
            PathBox.Text = "";
            AliasBox.Text = "";
        }

        private void SavedPath_Click(object sender, MouseButtonEventArgs e)
        {
            if (sender is FrameworkElement fe && fe.DataContext is SavedPath sp)
            {
                PathBox.Text = sp.Path;
                AliasBox.Text = sp.Name;
                NameBox.Text = GetNextName(sp.Name);
            }
        }

        private void RemoveSavedPath_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.DataContext is SavedPath sp)
            {
                PathStore.Remove(sp.Path);
                if (PathBox.Text == sp.Path)
                {
                    PathBox.Text = "";
                    AliasBox.Text = "";
                }
                LoadSavedPaths();
            }
        }

        private void Create_Click(object sender, RoutedEventArgs e)
        {
            TerminalName = string.IsNullOrWhiteSpace(NameBox.Text) ? "Terminal" : NameBox.Text.Trim();
            TerminalType = TypeCombo.SelectedIndex == 0 ? TerminalType.Cmd : TerminalType.PowerShell;

            string path = PathBox.Text?.Trim();
            WorkingDirectory = string.IsNullOrEmpty(path) ? null : path;

            // Auto-save path with alias
            if (!string.IsNullOrEmpty(path) && System.IO.Directory.Exists(path))
            {
                var alias = AliasBox.Text?.Trim();
                if (string.IsNullOrEmpty(alias))
                {
                    alias = System.IO.Path.GetFileName(path.TrimEnd('\\', '/'));
                    if (string.IsNullOrEmpty(alias)) alias = "Terminal";
                }
                PathStore.Add(alias, path);
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
