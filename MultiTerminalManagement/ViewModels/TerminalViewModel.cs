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
        public string AccentColor { get; }

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

        public string TypeIcon => Type == TerminalType.PowerShell ? "PS" : ">_";

        /// <summary>
        /// Stores the TermPTY for persistence across tab switches.
        /// Managed by TerminalControl.
        /// </summary>
        public object TermPty { get; set; }

        public TerminalViewModel(string name, TerminalType type, string workingDirectory = null, int index = 0)
        {
            _index = index;
            Name = name;
            Type = type;
            CommandLine = BuildCommandLine(type, workingDirectory);
            AccentColor = AccentPalette[index % AccentPalette.Length];
        }

        private static string BuildCommandLine(TerminalType type, string workingDirectory)
        {
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
