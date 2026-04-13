using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using MultiTerminalManagement.Models;
using MultiTerminalManagement.Views;

namespace MultiTerminalManagement.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        private TerminalViewModel _selectedTerminal;
        private bool _isGridMode;
        private int _gridColumns = 2;
        private int _gridRows = 2;
        private int _fontSize = 12;
        private bool _isBroadcastMode;
        private bool _isAutoGrid = true;
        private string _selectedPreset = "EvenGrid";

        public ObservableCollection<TerminalViewModel> Terminals { get; } = new ObservableCollection<TerminalViewModel>();

        public TerminalViewModel SelectedTerminal
        {
            get => _selectedTerminal;
            set => SetProperty(ref _selectedTerminal, value);
        }

        public bool IsGridMode
        {
            get => _isGridMode;
            set => SetProperty(ref _isGridMode, value);
        }

        public int GridColumns
        {
            get => _gridColumns;
            set => SetProperty(ref _gridColumns, value);
        }

        public int GridRows
        {
            get => _gridRows;
            set => SetProperty(ref _gridRows, value);
        }

        public int FontSize
        {
            get => _fontSize;
            set => SetProperty(ref _fontSize, value);
        }

        public bool IsAutoGrid
        {
            get => _isAutoGrid;
            set
            {
                if (SetProperty(ref _isAutoGrid, value) && value)
                    RecalcAutoGrid();
            }
        }

        public string SelectedPreset
        {
            get => _selectedPreset;
            set
            {
                if (SetProperty(ref _selectedPreset, value))
                {
                    // Selecting a layout preset auto-enables grid mode
                    if (!_isGridMode)
                        IsGridMode = true;
                }
            }
        }

        public bool IsBroadcastMode
        {
            get => _isBroadcastMode;
            set
            {
                if (SetProperty(ref _isBroadcastMode, value))
                {
                    foreach (var t in Terminals)
                        t.IsBroadcastModeActive = value;
                }
            }
        }

        public ICommand AddTerminalCommand { get; }
        public ICommand CloseTerminalCommand { get; }
        public ICommand CycleTerminalCommand { get; }
        public ICommand CycleTerminalBackCommand { get; }
        public ICommand GoToTerminalCommand { get; }
        public ICommand ToggleBroadcastCommand { get; }

        // Raised when navigation requests focus on a terminal
        public event Action<TerminalViewModel> FocusTerminalRequested;

        public void RaiseFocusTerminal(TerminalViewModel vm)
        {
            FocusTerminalRequested?.Invoke(vm);
        }

        public MainViewModel()
        {
            AddTerminalCommand = new RelayCommand(_ => AddTerminal());
            CloseTerminalCommand = new RelayCommand(param => CloseTerminal(param as TerminalViewModel));
            CycleTerminalCommand = new RelayCommand(_ => CycleTerminal(forward: true));
            CycleTerminalBackCommand = new RelayCommand(_ => CycleTerminal(forward: false));
            ToggleBroadcastCommand = new RelayCommand(_ => IsBroadcastMode = !IsBroadcastMode);
            GoToTerminalCommand = new RelayCommand(param =>
            {
                if (param is int index)
                    GoToTerminal(index);
                else if (param is string s && int.TryParse(s, out int i))
                    GoToTerminal(i);
            });

            Terminals.CollectionChanged += (s, e) =>
            {
                UpdateTerminalIndices();
                // NOTE: RecalcAutoGrid is called by MainWindow AFTER it creates the
                // TerminalControl, to avoid layout updates before controls are ready.
            };
        }

        public void RecalcAutoGrid()
        {
            int count = Terminals.Count;
            if (count <= 0) return;

            // Calculate optimal cols x rows to fit all terminals
            int cols = (int)Math.Ceiling(Math.Sqrt(count));
            int rows = (int)Math.Ceiling((double)count / cols);

            GridColumns = cols;
            GridRows = rows;
        }

        private void AddTerminal()
        {
            var existingNames = Terminals.Select(t => t.Name);
            var dialog = new CreateTerminalDialog(existingNames)
            {
                Owner = Application.Current.MainWindow
            };

            if (dialog.ShowDialog() == true)
            {
                var vm = new TerminalViewModel(dialog.TerminalName, dialog.TerminalType, dialog.WorkingDirectory, Terminals.Count, dialog.StartupCommand,
                    dialog.SshHost, dialog.SshPort, dialog.SshUser, dialog.SshKeyPath, dialog.SshPassword);
                if (!string.IsNullOrEmpty(dialog.AccentColor))
                    vm.AccentColor = dialog.AccentColor;
                Terminals.Add(vm);
                SelectedTerminal = vm;
                if (IsBroadcastMode)
                    vm.IsBroadcastModeActive = true;
            }
        }

        private void CloseTerminal(TerminalViewModel terminal)
        {
            if (terminal == null) return;

            var result = MessageBox.Show(
                $"Close terminal \"{terminal.Name}\"?",
                "Confirm",
                MessageBoxButton.YesNo,
                MessageBoxImage.Question);

            if (result != MessageBoxResult.Yes) return;

            Terminals.Remove(terminal);
            terminal.Dispose();
        }

        public void CloseAllTerminals()
        {
            foreach (var t in Terminals)
            {
                t.Dispose();
            }
            Terminals.Clear();
        }

        private void UpdateTerminalIndices()
        {
            for (int i = 0; i < Terminals.Count; i++)
            {
                Terminals[i].Index = i;
            }
        }

        private void CycleTerminal(bool forward)
        {
            if (Terminals.Count == 0) return;

            int currentIndex = SelectedTerminal != null ? Terminals.IndexOf(SelectedTerminal) : -1;
            int next;

            if (forward)
                next = (currentIndex + 1) % Terminals.Count;
            else
                next = (currentIndex - 1 + Terminals.Count) % Terminals.Count;

            SelectedTerminal = Terminals[next];
            FocusTerminalRequested?.Invoke(Terminals[next]);
        }

        public void GoToTerminal(int oneBasedIndex)
        {
            // Convert 1-based (Ctrl+1..9) to 0-based
            int idx = oneBasedIndex - 1;
            if (idx >= 0 && idx < Terminals.Count)
            {
                SelectedTerminal = Terminals[idx];
                FocusTerminalRequested?.Invoke(Terminals[idx]);
            }
        }

        public void MoveTerminal(int oldIndex, int newIndex)
        {
            if (oldIndex < 0 || oldIndex >= Terminals.Count) return;
            if (newIndex < 0 || newIndex >= Terminals.Count) return;
            if (oldIndex == newIndex) return;

            Terminals.Move(oldIndex, newIndex);
        }

        public void SwapTerminals(int indexA, int indexB)
        {
            if (indexA < 0 || indexA >= Terminals.Count) return;
            if (indexB < 0 || indexB >= Terminals.Count) return;
            if (indexA == indexB) return;

            // Swap by moving: move A to B's position, then adjust
            int lo = Math.Min(indexA, indexB);
            int hi = Math.Max(indexA, indexB);
            Terminals.Move(hi, lo);
            Terminals.Move(lo + 1, hi);
        }

        public void CreateTerminalFromProfile(Models.TerminalProfile profile)
        {
            var vm = new TerminalViewModel(
                profile.Name,
                profile.TerminalType,
                profile.DefaultWorkingDirectory,
                Terminals.Count,
                profile.StartupCommand,
                profile.SshHost,
                profile.SshPort,
                profile.SshUser,
                profile.SshKeyPath,
                Helpers.PasswordProtector.Unprotect(profile.SshPasswordEncrypted));
            if (!string.IsNullOrEmpty(profile.IconColor))
                vm.AccentColor = profile.IconColor;
            Terminals.Add(vm);
            SelectedTerminal = vm;
            if (IsBroadcastMode)
                vm.IsBroadcastModeActive = true;
        }

        public Models.Session CaptureCurrentSession(string name)
        {
            var session = new Models.Session
            {
                Name = name,
                Date = DateTime.Now,
                GridRows = GridRows,
                GridColumns = GridColumns,
                IsGridMode = IsGridMode,
                IsAutoGrid = IsAutoGrid,
                LayoutPreset = SelectedPreset,
                FontSize = FontSize,
                Terminals = new System.Collections.Generic.List<Models.TerminalConfig>()
            };

            foreach (var t in Terminals)
            {
                session.Terminals.Add(new Models.TerminalConfig
                {
                    Name = t.Name,
                    TerminalType = t.Type,
                    WorkingDirectory = t.WorkingDirectory,
                    StartupCommand = t.StartupCommand,
                    SshHost = t.SshHost,
                    SshPort = t.SshPort,
                    SshUser = t.SshUser,
                    SshKeyPath = t.SshKeyPath,
                    SshPasswordEncrypted = Helpers.PasswordProtector.Protect(t.SshPassword)
                });
            }

            return session;
        }

        public void RestoreSession(Models.Session session)
        {
            CloseAllTerminals();

            GridRows = session.GridRows;
            GridColumns = session.GridColumns;
            IsGridMode = session.IsGridMode;
            IsAutoGrid = session.IsAutoGrid;
            SelectedPreset = session.LayoutPreset ?? "EvenGrid";
            FontSize = session.FontSize;

            foreach (var tc in session.Terminals)
            {
                var vm = new TerminalViewModel(tc.Name, tc.TerminalType, tc.WorkingDirectory, Terminals.Count, tc.StartupCommand,
                    tc.SshHost, tc.SshPort, tc.SshUser, tc.SshKeyPath,
                    Helpers.PasswordProtector.Unprotect(tc.SshPasswordEncrypted));
                Terminals.Add(vm);
            }

            if (Terminals.Count > 0)
                SelectedTerminal = Terminals[0];
        }

        public void AutoSaveSession()
        {
            var session = CaptureCurrentSession("__last_session__");
            Models.SessionStore.SaveLastSession(session);
        }

        public void AutoRestoreSession()
        {
            var session = Models.SessionStore.LoadLastSession();
            if (session != null && session.Terminals.Count > 0)
                RestoreSession(session);
        }
    }
}
