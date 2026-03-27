using System;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using MultiTerminalManagement.ViewModels;

namespace MultiTerminalManagement.Views
{
    public partial class BroadcastWindow : Window
    {
        private readonly ObservableCollection<TerminalViewModel> _terminals;

        /// <summary>
        /// Raised when user wants to send a command to checked terminals.
        /// </summary>
        public event Action<string> SendRequested;

        public BroadcastWindow(ObservableCollection<TerminalViewModel> terminals)
        {
            InitializeComponent();
            _terminals = terminals;
            TerminalList.ItemsSource = _terminals;
            CommandBox.Focus();
        }

        private void Send_Click(object sender, RoutedEventArgs e)
        {
            SendCommand();
        }

        private void CommandBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter && !Keyboard.Modifiers.HasFlag(ModifierKeys.Shift))
            {
                SendCommand();
                e.Handled = true;
            }
        }

        private void SendCommand()
        {
            var text = CommandBox.Text;
            if (string.IsNullOrEmpty(text)) return;

            CommandBox.Clear();
            SendRequested?.Invoke(text);
            CommandBox.Focus();
        }

        private void CheckAll_Click(object sender, RoutedEventArgs e)
        {
            foreach (var t in _terminals)
                t.IsBroadcastTarget = true;
        }

        private void UncheckAll_Click(object sender, RoutedEventArgs e)
        {
            foreach (var t in _terminals)
                t.IsBroadcastTarget = false;
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
