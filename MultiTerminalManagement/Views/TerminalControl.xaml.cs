using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using EasyWindowsTerminalControl;
using Microsoft.Terminal.Wpf;
using MultiTerminalManagement.Helpers;
using MultiTerminalManagement.Services;
using MultiTerminalManagement.ViewModels;

namespace MultiTerminalManagement.Views
{
    public partial class TerminalControl : UserControl
    {
        private EasyTerminalControl _termControl;
        private bool _terminalCreated;
        private int _fontSize = 14;
        private TerminalSearchBar _searchBar;
        private CommandCompletionMonitor _completionMonitor;
        private readonly List<string> _commandHistory = new List<string>();

        public event EventHandler CloseRequested;
        public event EventHandler ZoomRequested;
        public event EventHandler<string> BroadcastSendRequested;
        public event EventHandler RightClicked;

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

                // When terminal gets focus, mark this cell as active
                _termControl.GotFocus += (s, ev) => SetActive(true);
                _termControl.LostFocus += (s, ev) =>
                {
                    Dispatcher.BeginInvoke(new Action(() =>
                    {
                        if (!_termControl.IsFocused && !InputBox.IsFocused && !HeaderRenameBox.IsFocused)
                            SetActive(false);
                    }), System.Windows.Threading.DispatcherPriority.Input);
                };

                Dispatcher.BeginInvoke(new Action(() => ApplyTheme()),
                    System.Windows.Threading.DispatcherPriority.Loaded);

                // SSH: auto-type saved password if provided
                if (vm.Type == Models.TerminalType.SSH && !string.IsNullOrEmpty(vm.SshPassword))
                {
                    _ = AutoTypeSshPasswordAsync(vm.SshPassword);
                }

                // Send startup command if configured
                if (!string.IsNullOrEmpty(vm.StartupCommand))
                {
                    _ = SendStartupCommandAsync(vm.StartupCommand);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Failed to create terminal: {ex.Message}", "Error");
            }
        }

        private async System.Threading.Tasks.Task SendStartupCommandAsync(string command)
        {
            // Poll for terminal readiness (max 5s)
            for (int i = 0; i < 50; i++)
            {
                await System.Threading.Tasks.Task.Delay(100);
                if (_termControl?.ConPTYTerm != null) break;
            }
            await System.Threading.Tasks.Task.Delay(300); // buffer for shell prompt
            foreach (char c in command)
                WriteToConPTY(c.ToString());
            WriteToConPTY("\r");
        }

        private async System.Threading.Tasks.Task AutoTypeSshPasswordAsync(string password)
        {
            // Poll for terminal readiness (max 5s)
            for (int i = 0; i < 50; i++)
            {
                await System.Threading.Tasks.Task.Delay(100);
                if (_termControl?.ConPTYTerm != null) break;
            }
            // Wait for ssh.exe to connect and reach the password prompt.
            // 2s is a reasonable default for LAN/local servers.
            await System.Threading.Tasks.Task.Delay(2000);
            foreach (char c in password)
                WriteToConPTY(c.ToString());
            WriteToConPTY("\r");
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

            // Only change color, never thickness — layout shift causes HwndHost duplicate rendering
            FocusBorder.BorderBrush = active
                ? new SolidColorBrush((Color)ColorConverter.ConvertFromString("#0e639c"))
                : Brushes.Transparent;
        }

        private void InputBox_GotFocus(object sender, RoutedEventArgs e)
        {
            SetActive(true);
        }

        private void InputBox_LostFocus(object sender, RoutedEventArgs e)
        {
            // Delay check - if focus moves to terminal or rename box, stay active
            Dispatcher.BeginInvoke(new Action(() =>
            {
                if (!InputBox.IsFocused && !HeaderRenameBox.IsFocused
                    && (_termControl == null || !_termControl.IsFocused))
                    SetActive(false);
            }), System.Windows.Threading.DispatcherPriority.Input);
        }

        private void OnCellRightClick(object sender, MouseButtonEventArgs e)
        {
            RightClicked?.Invoke(this, EventArgs.Empty);
            e.Handled = true;
        }

        // ---- Rename ----

        public void TriggerRename()
        {
            if (HeaderBar.Visibility == Visibility.Visible)
                StartRename();
        }

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

            // Empty Enter → send bare \r to terminal (confirm prompts, new line, etc.)
            if (string.IsNullOrEmpty(text))
            {
                WriteToConPTY("\r");
                return;
            }

            // Add to history (avoid consecutive duplicates, keep last 5)
            if (_commandHistory.Count == 0 || _commandHistory[_commandHistory.Count - 1] != text)
            {
                _commandHistory.Add(text);
                if (_commandHistory.Count > 5)
                    _commandHistory.RemoveAt(0);
            }

            InputBox.Clear();

            await SendTextToTerminal(text);

            // Broadcast if mode is active
            if (DataContext is TerminalViewModel vm && vm.IsBroadcastModeActive && vm.IsBroadcastTarget)
                BroadcastSendRequested?.Invoke(this, text);

            InputBox.Focus();
        }

        private async Task SendTextToTerminal(string text)
        {
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
        }

        public async void SendBroadcastCommand(string text)
        {
            await SendTextToTerminal(text);
        }

        // ---- Keyboard handling (InputBox shortcuts) ----

        private void InputBox_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                if (Keyboard.Modifiers.HasFlag(ModifierKeys.Shift))
                    return;

                SendCommand();
                e.Handled = true;
            }
            else if (e.Key == Key.C && Keyboard.Modifiers == ModifierKeys.Control)
            {
                // Ctrl+C: cancel running command (only when no text selected in InputBox)
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
            else if (e.Key == Key.S && Keyboard.Modifiers == (ModifierKeys.Control | ModifierKeys.Shift))
            {
                OpenSnippetPicker();
                e.Handled = true;
            }
            else if (e.Key == Key.F && Keyboard.Modifiers == ModifierKeys.Control)
            {
                ToggleSearch();
                e.Handled = true;
            }
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

        // ---- History ----

        private void HistoryButton_Click(object sender, RoutedEventArgs e)
        {
            HistoryListBox.Items.Clear();

            if (_commandHistory.Count == 0)
            {
                HistoryEmptyText.Visibility = Visibility.Visible;
                HistoryListBox.Visibility = Visibility.Collapsed;
            }
            else
            {
                HistoryEmptyText.Visibility = Visibility.Collapsed;
                HistoryListBox.Visibility = Visibility.Visible;

                // Show most recent first
                for (int i = _commandHistory.Count - 1; i >= 0; i--)
                    HistoryListBox.Items.Add(_commandHistory[i]);
            }

            HistoryPopup.IsOpen = true;
        }

        private void HistoryListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (HistoryListBox.SelectedItem is string cmd)
            {
                InputBox.Text = cmd;
                InputBox.CaretIndex = cmd.Length;
                HistoryPopup.IsOpen = false;
                HistoryListBox.SelectedItem = null;
                InputBox.Focus();
            }
        }

        // ---- Snippet ----

        private void SnippetButton_Click(object sender, RoutedEventArgs e)
        {
            OpenSnippetPicker();
        }

        private void OpenSnippetPicker()
        {
            var picker = new SnippetPickerPopup
            {
                Owner = Window.GetWindow(this)
            };

            if (picker.ShowDialog() == true && picker.SelectedSnippet != null)
            {
                var resolved = PlaceholderInputDialog.ResolveCommand(
                    picker.SelectedSnippet.Command, Window.GetWindow(this));

                if (resolved != null)
                    InputBox.Text = resolved;
            }
            InputBox.Focus();
        }

        // ---- Search ----

        public event EventHandler<TimeSpan> CommandCompleted;

        public void ToggleSearch()
        {
            if (_searchBar != null && SearchBarHost.Content != null)
            {
                SearchBarHost.Content = null;
                _searchBar = null;
                InputBox.Focus();
                return;
            }

            _searchBar = new TerminalSearchBar();
            _searchBar.CloseRequested += (s, _) =>
            {
                SearchBarHost.Content = null;
                _searchBar = null;
                InputBox.Focus();
            };

            // Try to get console text
            string text = "";
            try
            {
                var pty = _termControl?.ConPTYTerm;
                if (pty != null)
                    text = pty.GetConsoleText(true);
            }
            catch { }

            _searchBar.SetText(text);
            SearchBarHost.Content = _searchBar;
            _searchBar.FocusSearch();
        }

        // ---- Notification Monitor ----

        public void InitCompletionMonitor()
        {
            _completionMonitor = new CommandCompletionMonitor();
            _completionMonitor.CommandCompleted += duration =>
            {
                if (DataContext is TerminalViewModel vm)
                {
                    vm.IsCommandRunning = false;
                    vm.HasCompletedCommand = true;
                }
                CommandCompleted?.Invoke(this, duration);
            };

            // Hook into output via TerminalOutput event
            try
            {
                if (_termControl?.ConPTYTerm != null)
                {
                    _termControl.LogConPTYOutput = true;
                    _termControl.ConPTYTerm.TerminalOutput += (s, args) =>
                    {
                        Dispatcher.BeginInvoke(new Action(() =>
                            _completionMonitor?.ProcessOutput(args?.ToString() ?? "")));
                    };
                }
            }
            catch { }
        }

        public void MarkCommandSent()
        {
            if (DataContext is TerminalViewModel vm)
                vm.IsCommandRunning = true;
            _completionMonitor?.MarkCommandSent();
        }
    }
}
