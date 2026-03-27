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
        private int _fontSize = 14;

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

        public ICommand AddTerminalCommand { get; }
        public ICommand CloseTerminalCommand { get; }
        public ICommand CycleTerminalCommand { get; }
        public ICommand CycleTerminalBackCommand { get; }
        public ICommand GoToTerminalCommand { get; }

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
            GoToTerminalCommand = new RelayCommand(param =>
            {
                if (param is int index)
                    GoToTerminal(index);
                else if (param is string s && int.TryParse(s, out int i))
                    GoToTerminal(i);
            });

            Terminals.CollectionChanged += (s, e) => UpdateTerminalIndices();
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
                var vm = new TerminalViewModel(dialog.TerminalName, dialog.TerminalType, dialog.WorkingDirectory, Terminals.Count);
                Terminals.Add(vm);
                SelectedTerminal = vm;
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
    }
}
