using System;

namespace MultiTerminalManagement.Services
{
    public static class ToastNotificationService
    {
        private static System.Windows.Forms.NotifyIcon _notifyIcon;

        private static void EnsureIcon()
        {
            if (_notifyIcon != null) return;
            _notifyIcon = new System.Windows.Forms.NotifyIcon
            {
                Icon = System.Drawing.SystemIcons.Application,
                Visible = false
            };
        }

        public static void ShowNotification(string title, string message, int timeoutMs = 3000)
        {
            try
            {
                EnsureIcon();
                _notifyIcon.Visible = true;
                _notifyIcon.ShowBalloonTip(timeoutMs, title, message,
                    System.Windows.Forms.ToolTipIcon.Info);

                // Hide after showing
                var timer = new System.Windows.Threading.DispatcherTimer
                {
                    Interval = TimeSpan.FromMilliseconds(timeoutMs + 500)
                };
                timer.Tick += (s, e) =>
                {
                    _notifyIcon.Visible = false;
                    timer.Stop();
                };
                timer.Start();
            }
            catch { }
        }

        public static void Cleanup()
        {
            if (_notifyIcon != null)
            {
                _notifyIcon.Visible = false;
                _notifyIcon.Dispose();
                _notifyIcon = null;
            }
        }
    }
}
