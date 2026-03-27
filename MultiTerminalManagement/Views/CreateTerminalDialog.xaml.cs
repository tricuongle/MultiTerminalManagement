using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Interop;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public partial class CreateTerminalDialog : Window
    {
        private readonly ObservableCollection<string> _savedPaths = new ObservableCollection<string>();

        public string TerminalName { get; private set; }
        public TerminalType TerminalType { get; private set; }
        public string WorkingDirectory { get; private set; }

        public CreateTerminalDialog()
        {
            InitializeComponent();
            SavedPathsList.ItemsSource = _savedPaths;
            LoadSavedPaths();
            NameBox.Focus();
            NameBox.SelectAll();
        }

        private void LoadSavedPaths()
        {
            _savedPaths.Clear();
            foreach (var path in PathStore.Load())
                _savedPaths.Add(path);
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
                PathStore.Add(dialog.SelectedPath);
                LoadSavedPaths();
            }
        }

        private void ClearPath_Click(object sender, RoutedEventArgs e)
        {
            PathBox.Text = "";
        }

        private void SavedPath_Click(object sender, MouseButtonEventArgs e)
        {
            if (sender is FrameworkElement fe && fe.DataContext is string path)
            {
                PathBox.Text = path;
            }
        }

        private void RemoveSavedPath_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.Tag is string path)
            {
                PathStore.Remove(path);
                if (PathBox.Text == path) PathBox.Text = "";
                LoadSavedPaths();
            }
        }

        private void Create_Click(object sender, RoutedEventArgs e)
        {
            TerminalName = string.IsNullOrWhiteSpace(NameBox.Text) ? "Terminal" : NameBox.Text.Trim();
            TerminalType = TypeCombo.SelectedIndex == 0 ? TerminalType.Cmd : TerminalType.PowerShell;

            string path = PathBox.Text?.Trim();
            WorkingDirectory = string.IsNullOrEmpty(path) ? null : path;

            // Auto-save pasted/typed paths
            if (!string.IsNullOrEmpty(path) && System.IO.Directory.Exists(path))
                PathStore.Add(path);

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
