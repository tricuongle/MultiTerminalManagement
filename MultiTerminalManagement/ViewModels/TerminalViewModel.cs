using System;
using System.Windows.Media;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.ViewModels
{
    public class TerminalViewModel : ViewModelBase, IDisposable
    {
        private string _name;
        private bool _disposed;
        private bool _isActive;
        private bool _isRenaming;
        private int _index;

        // Accent color palette for terminal color coding
        private static readonly string[] AccentPalette = new[]
        {
            "#0e639c", // blue
            "#16825d", // green
            "#68217a", // purple
            "#c27d1a", // orange
            "#cd3632", // red
            "#3a96dd", // cyan
            "#b4009e", // magenta
            "#13a10e", // bright green
        };

        public TerminalType Type { get; }
        public string CommandLine { get; }
        public string AccentColor { get; set; }
        public string WorkingDirectory { get; }
        public string StartupCommand { get; }

        // SSH
        public string SshHost { get; }
        public int SshPort { get; }
        public string SshUser { get; }
        public string SshKeyPath { get; }
        /// <summary>
        /// Plaintext SSH password held only in memory for auto-typing.
        /// Persisted versions are DPAPI-encrypted.
        /// </summary>
        public string SshPassword { get; }

        // Broadcast
        private bool _isBroadcastTarget = true;
        private bool _isBroadcastModeActive;

        public bool IsBroadcastTarget
        {
            get => _isBroadcastTarget;
            set => SetProperty(ref _isBroadcastTarget, value);
        }

        public bool IsBroadcastModeActive
        {
            get => _isBroadcastModeActive;
            set => SetProperty(ref _isBroadcastModeActive, value);
        }

        // Notification
        private bool _isCommandRunning;
        private bool _hasCompletedCommand;

        public bool IsCommandRunning
        {
            get => _isCommandRunning;
            set => SetProperty(ref _isCommandRunning, value);
        }

        public bool HasCompletedCommand
        {
            get => _hasCompletedCommand;
            set => SetProperty(ref _hasCompletedCommand, value);
        }

        public string Name
        {
            get => _name;
            set
            {
                if (SetProperty(ref _name, value))
                    OnPropertyChanged(nameof(Header));
            }
        }

        public string Header => $"{Name} [{Type}]";

        public bool IsActive
        {
            get => _isActive;
            set => SetProperty(ref _isActive, value);
        }

        public bool IsRenaming
        {
            get => _isRenaming;
            set => SetProperty(ref _isRenaming, value);
        }

        public int Index
        {
            get => _index;
            set
            {
                if (SetProperty(ref _index, value))
                    OnPropertyChanged(nameof(DisplayIndex));
            }
        }

        public string DisplayIndex => $"#{Index + 1}";

        public string TypeIcon => Type switch
        {
            TerminalType.PowerShell => "PS",
            TerminalType.SSH => "SSH",
            _ => ">_"
        };

        /// <summary>
        /// Stores the TermPTY for persistence across tab switches.
        /// Managed by TerminalControl.
        /// </summary>
        public object TermPty { get; set; }

        public TerminalViewModel(string name, TerminalType type, string workingDirectory = null, int index = 0, string startupCommand = null,
            string sshHost = null, int sshPort = 22, string sshUser = null, string sshKeyPath = null, string sshPassword = null)
        {
            _index = index;
            Name = name;
            Type = type;
            WorkingDirectory = workingDirectory;
            StartupCommand = startupCommand;
            SshHost = sshHost;
            SshPort = sshPort;
            SshUser = sshUser;
            SshKeyPath = sshKeyPath;
            SshPassword = sshPassword;
            CommandLine = BuildCommandLine(type, workingDirectory, sshHost, sshPort, sshUser, sshKeyPath);
            AccentColor = AccentPalette[index % AccentPalette.Length];
        }

        private static string BuildCommandLine(TerminalType type, string workingDirectory,
            string sshHost = null, int sshPort = 22, string sshUser = null, string sshKeyPath = null)
        {
            if (type == TerminalType.SSH && !string.IsNullOrEmpty(sshHost))
            {
                // -o StrictHostKeyChecking=accept-new : skip first-time yes/no prompt
                var args = "ssh.exe -o StrictHostKeyChecking=accept-new";
                if (sshPort != 22)
                    args += $" -p {sshPort}";
                if (!string.IsNullOrEmpty(sshKeyPath))
                    args += $" -i \"{sshKeyPath}\"";
                var target = string.IsNullOrEmpty(sshUser) ? sshHost : $"{sshUser}@{sshHost}";
                args += $" {target}";
                return args;
            }

            if (!string.IsNullOrEmpty(workingDirectory))
            {
                return type == TerminalType.PowerShell
                    ? $"powershell.exe -NoLogo -NoExit -Command \"Set-Location -LiteralPath '{workingDirectory}'\""
                    : $"cmd.exe /k cd /d \"{workingDirectory}\"";
            }

            return type == TerminalType.PowerShell
                ? "powershell.exe -NoLogo"
                : "cmd.exe";
        }

        public void Dispose()
        {
            if (_disposed) return;
            _disposed = true;
            try
            {
                if (TermPty is EasyWindowsTerminalControl.TermPTY pty)
                    pty.StopExternalTermOnly();
            }
            catch { }
        }
    }
}
