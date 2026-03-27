using System;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using EasyWindowsTerminalControl;
using Microsoft.Terminal.Wpf;
using MultiTerminalManagement.ViewModels;

namespace MultiTerminalManagement.Views
{
    public partial class TerminalControl : UserControl
    {
        private EasyTerminalControl _termControl;
        private bool _terminalCreated;
        private int _fontSize = 14;

        public event EventHandler CloseRequested;
        public event EventHandler ZoomRequested;

        public bool ShowHeader
        {
            get => HeaderBar.Visibility == Visibility.Visible;
            set => HeaderBar.Visibility = value ? Visibility.Visible : Visibility.Collapsed;
        }

        public bool IsZoomed
        {
            get => ZoomButton.Content?.ToString() == "\u21a9";
            set
            {
                ZoomButton.Content = value ? "\u21a9" : "\u26f6";
                ZoomButton.ToolTip = value ? "Zoom out (back to grid)" : "Zoom in";
            }
        }

        public TerminalControl()
        {
            InitializeComponent();
        }

        private void OnLoaded(object sender, RoutedEventArgs e)
        {
            if (!_terminalCreated && DataContext is TerminalViewModel vm)
            {
                CreateTerminal(vm);
                _terminalCreated = true;
            }
            InputBox.Focus();
        }

        private void CreateTerminal(TerminalViewModel vm)
        {
            try
            {
                _termControl = new EasyTerminalControl
                {
                    StartupCommandLine = vm.CommandLine,
                    Win32InputMode = false,
                    InputCapture = EasyTerminalControl.INPUT_CAPTURE.TabKey
                                 | EasyTerminalControl.INPUT_CAPTURE.DirectionKeys,
                    FontSizeWhenSettingTheme = _fontSize,
                    FontFamilyWhenSettingTheme = new FontFamily("Consolas"),
                };

                HostGrid.Children.Add(_termControl);

                Dispatcher.BeginInvoke(new Action(() => ApplyTheme()),
                    System.Windows.Threading.DispatcherPriority.Loaded);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Failed to create terminal: {ex.Message}", "Error");
            }
        }

        private void ApplyTheme()
        {
            if (_termControl == null) return;
            try
            {
                _termControl.Theme = new TerminalTheme
                {
                    DefaultBackground = EasyTerminalControl.ColorToVal(Color.FromRgb(30, 30, 30)),
                    DefaultForeground = EasyTerminalControl.ColorToVal(Color.FromRgb(204, 204, 204)),
                    DefaultSelectionBackground = EasyTerminalControl.ColorToVal(Color.FromRgb(58, 58, 58)),
                    CursorStyle = CursorStyle.BlinkingBar,
                    ColorTable = new uint[]
                    {
                        0x0C0C0C, 0xC50F1F, 0x13A10E, 0xC19C00,
                        0x0037DA, 0x881798, 0x3A96DD, 0xCCCCCC,
                        0x767676, 0xE74856, 0x16C60C, 0xF9F1A5,
                        0x3B78FF, 0xB4009E, 0x61D6D6, 0xF2F2F2
                    }
                };
            }
            catch { }
        }

        public void UpdateFontSize(int size)
        {
            _fontSize = size;
            if (_termControl == null) return;
            _termControl.FontSizeWhenSettingTheme = size;
            ApplyTheme();
        }

        // ---- Focus management ----

        public void FocusInput()
        {
            InputBox.Focus();
        }

        private void SetActive(bool active)
        {
            if (DataContext is TerminalViewModel vm)
                vm.IsActive = active;

            if (active)
            {
                FocusBorder.BorderThickness = new Thickness(2);
                FocusBorder.BorderBrush = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#0e639c"));
            }
            else
            {
                FocusBorder.BorderThickness = new Thickness(0);
                FocusBorder.BorderBrush = Brushes.Transparent;
            }
        }

        private void InputBox_GotFocus(object sender, RoutedEventArgs e)
        {
            SetActive(true);
        }

        private void InputBox_LostFocus(object sender, RoutedEventArgs e)
        {
            // Delay check - if focus moves to rename box within same control, stay active
            Dispatcher.BeginInvoke(new Action(() =>
            {
                if (!InputBox.IsFocused && !HeaderRenameBox.IsFocused)
                    SetActive(false);
            }), System.Windows.Threading.DispatcherPriority.Input);
        }

        private void HostGrid_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            InputBox.Focus();
        }

        // ---- Rename ----

        private void StartRename()
        {
            if (DataContext is TerminalViewModel vm)
            {
                vm.IsRenaming = true;
                HeaderNameText.Visibility = Visibility.Collapsed;
                HeaderRenameBox.Visibility = Visibility.Visible;
                HeaderRenameBox.Text = vm.Name;
                HeaderRenameBox.SelectAll();
                HeaderRenameBox.Focus();
            }
        }

        private void CommitRename()
        {
            if (DataContext is TerminalViewModel vm)
            {
                vm.IsRenaming = false;
                var newName = HeaderRenameBox.Text?.Trim();
                if (!string.IsNullOrEmpty(newName))
                    vm.Name = newName;

                HeaderNameText.Visibility = Visibility.Visible;
                HeaderRenameBox.Visibility = Visibility.Collapsed;
                InputBox.Focus();
            }
        }

        private void CancelRename()
        {
            if (DataContext is TerminalViewModel vm)
            {
                vm.IsRenaming = false;
                HeaderRenameBox.Text = vm.Name;
                HeaderNameText.Visibility = Visibility.Visible;
                HeaderRenameBox.Visibility = Visibility.Collapsed;
                InputBox.Focus();
            }
        }

        private void HeaderNameText_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                StartRename();
                e.Handled = true;
            }
        }

        private void HeaderRenameBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                CommitRename();
                e.Handled = true;
            }
            else if (e.Key == Key.Escape)
            {
                CancelRename();
                e.Handled = true;
            }
        }

        private void HeaderRenameBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (DataContext is TerminalViewModel vm && vm.IsRenaming)
                CommitRename();
        }

        // ---- Double-click header to zoom ----

        private void HeaderBar_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2)
            {
                // Don't zoom if clicking on name text (that's rename), or on buttons
                if (e.OriginalSource is System.Windows.Controls.TextBlock tb && tb == HeaderNameText)
                    return;

                ZoomRequested?.Invoke(this, EventArgs.Empty);
                e.Handled = true;
            }
        }

        // ---- ConPTY direct input ----

        private void WriteToConPTY(string text)
        {
            var pty = _termControl?.ConPTYTerm;
            if (pty == null) return;
            pty.WriteToTerm(text.AsSpan());
        }

        // ---- Send logic ----

        private async void SendCommand()
        {
            var text = InputBox.Text;
            if (string.IsNullOrEmpty(text)) return;

            InputBox.Clear();

            var normalized = text.Replace("\r\n", "\n");
            var lines = normalized.Split('\n');

            foreach (var line in lines)
            {
                if (line.Length > 0)
                {
                    foreach (char c in line)
                        WriteToConPTY(c.ToString());

                    await Task.Delay(80);
                }
                WriteToConPTY("\r");
            }

            InputBox.Focus();
        }

        // ---- Keyboard handling ----

        private void InputBox_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                if (Keyboard.Modifiers.HasFlag(ModifierKeys.Shift))
                    return;

                SendCommand();
                e.Handled = true;
            }
            else if (e.Key == Key.Up && !IsMultiLine())
            {
                WriteToConPTY("\x1b[A");
                e.Handled = true;
            }
            else if (e.Key == Key.Down && !IsMultiLine())
            {
                WriteToConPTY("\x1b[B");
                e.Handled = true;
            }
            else if (e.Key == Key.C && Keyboard.Modifiers == ModifierKeys.Control)
            {
                if (string.IsNullOrEmpty(InputBox.SelectedText))
                {
                    WriteToConPTY("\x03");
                    InputBox.Clear();
                    e.Handled = true;
                }
            }
            else if (e.Key == Key.L && Keyboard.Modifiers == ModifierKeys.Control)
            {
                WriteToConPTY("\x0C");
                e.Handled = true;
            }
        }

        private bool IsMultiLine()
        {
            return InputBox.Text?.Contains('\n') == true;
        }

        // ---- Drag & Drop ----

        private void InputBox_PreviewDragOver(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop) || e.Data.GetDataPresent(DataFormats.Text))
            {
                e.Effects = DragDropEffects.Copy;
                e.Handled = true;
            }
        }

        private void InputBox_PreviewDrop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                var files = (string[])e.Data.GetData(DataFormats.FileDrop);
                if (files != null && files.Length > 0)
                {
                    var paths = string.Join(" ", files.Select(f =>
                        f.Contains(' ') ? $"\"{f}\"" : f));
                    InsertTextAtCaret(paths);
                }
                e.Handled = true;
            }
            else if (e.Data.GetDataPresent(DataFormats.Text))
            {
                var text = (string)e.Data.GetData(DataFormats.Text);
                if (!string.IsNullOrEmpty(text))
                    InsertTextAtCaret(text);
                e.Handled = true;
            }
        }

        private void InsertTextAtCaret(string text)
        {
            int caretIndex = InputBox.CaretIndex;
            InputBox.Text = InputBox.Text.Insert(caretIndex, text);
            InputBox.CaretIndex = caretIndex + text.Length;
            InputBox.Focus();
        }

        // ---- Buttons ----

        private void SendButton_Click(object sender, RoutedEventArgs e)
        {
            SendCommand();
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            CloseRequested?.Invoke(this, EventArgs.Empty);
        }

        private void ZoomButton_Click(object sender, RoutedEventArgs e)
        {
            ZoomRequested?.Invoke(this, EventArgs.Empty);
        }
    }
}
