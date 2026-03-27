using System.Collections.Generic;
using System.Windows;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public partial class SessionManagerDialog : Window
    {
        private List<Session> _sessions;

        public Session SessionToLoad { get; private set; }

        public SessionManagerDialog()
        {
            InitializeComponent();
            _sessions = SessionStore.Load();
            RefreshList();

            var settings = AppSettings.Load();
            AutoRestoreCheck.IsChecked = settings.AutoRestoreSession;
        }

        private void RefreshList()
        {
            SessionList.ItemsSource = null;
            SessionList.ItemsSource = _sessions;
        }

        public void SetCurrentSessionCapture(Session session)
        {
            // Called by MainWindow to provide current state for saving
            _currentCapture = session;
        }

        private Session _currentCapture;

        private void SaveSession_Click(object sender, RoutedEventArgs e)
        {
            if (_currentCapture == null) return;
            var name = SessionNameBox.Text?.Trim();
            if (string.IsNullOrEmpty(name)) name = "Session";

            _currentCapture.Name = name;
            _sessions.Add(_currentCapture);
            SessionStore.Save(_sessions);
            RefreshList();
        }

        private void LoadSession_Click(object sender, RoutedEventArgs e)
        {
            if (SessionList.SelectedItem is Session s)
            {
                SessionToLoad = s;
                DialogResult = true;
                Close();
            }
        }

        private void DeleteSession_Click(object sender, RoutedEventArgs e)
        {
            if (SessionList.SelectedItem is Session s)
            {
                _sessions.Remove(s);
                SessionStore.Save(_sessions);
                RefreshList();
            }
        }

        private void AutoRestoreCheck_Changed(object sender, RoutedEventArgs e)
        {
            var settings = AppSettings.Load();
            settings.AutoRestoreSession = AutoRestoreCheck.IsChecked == true;
            settings.Save();
        }
    }
}
