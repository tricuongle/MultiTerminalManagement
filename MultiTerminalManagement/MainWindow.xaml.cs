using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using MultiTerminalManagement.Models;
using MultiTerminalManagement.Services;
using MultiTerminalManagement.ViewModels;
using MultiTerminalManagement.Views;

namespace MultiTerminalManagement
{
    public partial class MainWindow : Window
    {
        private readonly MainViewModel _viewModel;
        private readonly Dictionary<TerminalViewModel, TerminalControl> _terminalControls = new();
        private TerminalViewModel _zoomedTerminal;
        private bool _initialized;
        private bool _isProcessingCollectionChange;
        private BroadcastWindow _broadcastWindow;

        public MainWindow()
        {
            InitializeComponent();
            _viewModel = new MainViewModel();
            DataContext = _viewModel;

            LoadSettings();

            _viewModel.Terminals.CollectionChanged += Terminals_CollectionChanged;
            _viewModel.PropertyChanged += ViewModel_PropertyChanged;
            _viewModel.FocusTerminalRequested += OnFocusTerminalRequested;
            _initialized = true;

            Loaded += (s, e) => UpdateLayoutButtonHighlights();

            // Auto-restore session
            var settings = AppSettings.Load();
            if (settings.AutoRestoreSession)
                _viewModel.AutoRestoreSession();
        }

        // ---- Settings persistence ----

        private void LoadSettings()
        {
            var s = AppSettings.Load();
            _viewModel.FontSize = s.FontSize;
            _viewModel.IsAutoGrid = true;
            _viewModel.SelectedPreset = s.LayoutPreset ?? "EvenGrid";
        }

        private void SaveSettings()
        {
            if (!_initialized) return;
            var s = AppSettings.Load();
            s.GridColumns = _viewModel.GridColumns;
            s.GridRows = _viewModel.GridRows;
            s.FontSize = _viewModel.FontSize;
            s.IsAutoGrid = true;
            s.LayoutPreset = _viewModel.SelectedPreset;
            s.Save();
        }

        // ---- Terminal lifecycle ----

        private void Terminals_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            _isProcessingCollectionChange = true;
            try
            {
                if (e.Action == NotifyCollectionChangedAction.Add)
                {
                    foreach (TerminalViewModel vm in e.NewItems)
                    {
                        var tc = new TerminalControl { DataContext = vm };
                        tc.CloseRequested += (s, _) => _viewModel.CloseTerminalCommand.Execute(vm);
                        tc.ZoomRequested += (s, _) => ToggleZoom(vm);

                        // Broadcast: when one terminal sends, relay to others
                        tc.BroadcastSendRequested += (sender, text) =>
                        {
                            foreach (var kvp in _terminalControls)
                            {
                                if (kvp.Value != sender && kvp.Key.IsBroadcastTarget)
                                    kvp.Value.SendBroadcastCommand(text);
                            }
                        };

                        // Right-click context menu: Rename, Move Left, Move Right, Close
                        tc.RightClicked += (s, _) => ShowTerminalCellContextMenu(vm, tc);

                        // Command completion notification
                        var settings = AppSettings.Load();
                        tc.CommandCompleted += (sender, duration) =>
                        {
                            if (settings.NotifyOnCommandCompletion
                                && duration.TotalSeconds >= settings.NotificationThresholdSeconds
                                && _viewModel.SelectedTerminal != vm)
                            {
                                ToastNotificationService.ShowNotification(
                                    "Command Completed",
                                    $"\"{vm.Name}\" finished ({duration.TotalSeconds:F0}s)");
                            }
                        };

                        _terminalControls[vm] = tc;
                        TerminalHost.Children.Add(tc);

                        tc.UpdateFontSize(_viewModel.FontSize);
                    }
                }
                else if (e.Action == NotifyCollectionChangedAction.Remove)
                {
                    foreach (TerminalViewModel vm in e.OldItems)
                    {
                        if (_terminalControls.TryGetValue(vm, out var tc))
                        {
                            TerminalHost.Children.Remove(tc);
                            _terminalControls.Remove(vm);
                        }
                        if (_zoomedTerminal == vm)
                            _zoomedTerminal = null;
                    }
                }
                else if (e.Action == NotifyCollectionChangedAction.Reset)
                {
                    TerminalHost.Children.Clear();
                    _terminalControls.Clear();
                    _zoomedTerminal = null;
                }
                else if (e.Action == NotifyCollectionChangedAction.Move)
                {
                    TerminalHost.Children.Clear();
                    foreach (var vm in _viewModel.Terminals)
                    {
                        if (_terminalControls.TryGetValue(vm, out var tc))
                            TerminalHost.Children.Add(tc);
                    }
                }
            }
            finally
            {
                _isProcessingCollectionChange = false;
            }

            // Recalc grid after controls are ready, then update layout once
            if (_viewModel.IsAutoGrid && _viewModel.IsGridMode)
                _viewModel.RecalcAutoGrid();
            UpdateTerminalLayout();
        }

        private void ViewModel_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName is nameof(MainViewModel.IsGridMode)
                or nameof(MainViewModel.GridColumns)
                or nameof(MainViewModel.GridRows)
                or nameof(MainViewModel.SelectedPreset))
            {
                if (e.PropertyName == nameof(MainViewModel.IsGridMode))
                    _zoomedTerminal = null;
                // Skip layout update if triggered from collection change processing;
                // the collection change handler will do its own layout update after controls are ready.
                if (!_isProcessingCollectionChange)
                {
                    UpdateTerminalLayout();
                    UpdateLayoutButtonHighlights();
                }
            }

            if (e.PropertyName == nameof(MainViewModel.SelectedTerminal))
            {
                // Only update layout in tab mode (grid mode already shows all terminals)
                if (!_viewModel.IsGridMode)
                    UpdateTerminalLayout();

                FocusSelectedTerminal();
                if (_viewModel.SelectedTerminal != null)
                    _viewModel.SelectedTerminal.HasCompletedCommand = false;
            }

            if (e.PropertyName == nameof(MainViewModel.FontSize))
            {
                foreach (var tc in _terminalControls.Values)
                    tc.UpdateFontSize(_viewModel.FontSize);
            }

            if (e.PropertyName is nameof(MainViewModel.GridColumns)
                or nameof(MainViewModel.GridRows)
                or nameof(MainViewModel.FontSize)
                or nameof(MainViewModel.IsAutoGrid)
                or nameof(MainViewModel.SelectedPreset))
            {
                SaveSettings();
            }
        }

        // ---- Focus management ----

        private void OnFocusTerminalRequested(TerminalViewModel vm)
        {
            if (vm != null && _terminalControls.TryGetValue(vm, out var tc))
            {
                Dispatcher.BeginInvoke(new Action(() => tc.FocusInput()),
                    System.Windows.Threading.DispatcherPriority.Input);
            }
        }

        private void FocusSelectedTerminal()
        {
            if (_viewModel.SelectedTerminal != null)
                OnFocusTerminalRequested(_viewModel.SelectedTerminal);
        }

        // ---- Zoom ----

        private void ToggleZoom(TerminalViewModel vm)
        {
            _zoomedTerminal = _zoomedTerminal == vm ? null : vm;
            UpdateTerminalLayout();
        }

        // ---- Layout ----

        private void UpdateTerminalLayout()
        {
            TerminalHost.RowDefinitions.Clear();
            TerminalHost.ColumnDefinitions.Clear();

            // Reset spans for all controls
            foreach (var tc in _terminalControls.Values)
            {
                Grid.SetRowSpan(tc, 1);
                Grid.SetColumnSpan(tc, 1);
            }

            if (_terminalControls.Count == 0) return;

            if (_viewModel.IsGridMode)
            {
                if (_zoomedTerminal != null && _terminalControls.ContainsKey(_zoomedTerminal))
                {
                    // Focus layout: focused terminal large on the left, others stacked on the right
                    LayoutFocus();
                }
                else
                {
                    // Apply selected layout preset
                    switch (_viewModel.SelectedPreset)
                    {
                        case "BigTop":
                            LayoutBigTop();
                            break;
                        case "ThreeColumns":
                            LayoutThreeColumns();
                            break;
                        case "Horizontal":
                            LayoutHorizontal();
                            break;
                        case "Vertical":
                            LayoutVertical();
                            break;
                        default: // EvenGrid
                            LayoutEvenGrid();
                            break;
                    }
                }
            }
            else
            {
                _zoomedTerminal = null;
                TerminalHost.RowDefinitions.Add(new RowDefinition());
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());

                foreach (var vm in _viewModel.Terminals)
                {
                    if (!_terminalControls.TryGetValue(vm, out var tc)) continue;
                    Grid.SetRow(tc, 0);
                    Grid.SetColumn(tc, 0);
                    tc.Visibility = vm == _viewModel.SelectedTerminal
                        ? Visibility.Visible
                        : Visibility.Collapsed;
                    tc.ShowHeader = false;
                    tc.IsZoomed = false;
                    tc.Margin = new Thickness(0);
                }
            }
        }

        private void LayoutFocus()
        {
            if (!_terminalControls.TryGetValue(_zoomedTerminal, out var focusedTc))
            {
                _zoomedTerminal = null;
                LayoutEvenGrid();
                return;
            }

            var others = _viewModel.Terminals.Where(k => k != _zoomedTerminal).ToList();

            if (others.Count == 0)
            {
                TerminalHost.RowDefinitions.Add(new RowDefinition());
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());
                Grid.SetRow(focusedTc, 0);
                Grid.SetColumn(focusedTc, 0);
                focusedTc.Visibility = Visibility.Visible;
                focusedTc.ShowHeader = true;
                focusedTc.IsZoomed = true;
                focusedTc.Margin = new Thickness(0);
            }
            else
            {
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(3, GridUnitType.Star) });
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition { Width = new GridLength(1, GridUnitType.Star) });

                int sideRows = Math.Max(1, others.Count);
                for (int r = 0; r < sideRows; r++)
                    TerminalHost.RowDefinitions.Add(new RowDefinition());

                Grid.SetRow(focusedTc, 0);
                Grid.SetRowSpan(focusedTc, sideRows);
                Grid.SetColumn(focusedTc, 0);
                focusedTc.Visibility = Visibility.Visible;
                focusedTc.ShowHeader = true;
                focusedTc.IsZoomed = true;
                focusedTc.Margin = new Thickness(1);

                for (int i = 0; i < others.Count; i++)
                {
                    if (!_terminalControls.TryGetValue(others[i], out var tc)) continue;
                    Grid.SetRow(tc, i);
                    Grid.SetRowSpan(tc, 1);
                    Grid.SetColumn(tc, 1);
                    tc.Visibility = Visibility.Visible;
                    tc.ShowHeader = true;
                    tc.IsZoomed = false;
                    tc.Margin = new Thickness(1);
                }
            }
        }

        private void LayoutEvenGrid()
        {
            _viewModel.RecalcAutoGrid();
            var cols = Math.Max(1, _viewModel.GridColumns);
            var rows = Math.Max(1, _viewModel.GridRows);

            for (int r = 0; r < rows; r++)
                TerminalHost.RowDefinitions.Add(new RowDefinition());
            for (int c = 0; c < cols; c++)
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());

            int i = 0;
            foreach (var vm in _viewModel.Terminals)
            {
                if (!_terminalControls.TryGetValue(vm, out var tc)) continue;
                Grid.SetRow(tc, i / cols);
                Grid.SetColumn(tc, i % cols);
                tc.Visibility = Visibility.Visible;
                tc.ShowHeader = true;
                tc.IsZoomed = false;
                tc.Margin = new Thickness(1);
                i++;
            }
        }

        private void LayoutBigTop()
        {
            var terminals = _viewModel.Terminals.ToList();
            if (terminals.Count == 0) return;

            if (terminals.Count == 1)
            {
                // Single terminal - full screen
                TerminalHost.RowDefinitions.Add(new RowDefinition());
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());
                if (!_terminalControls.TryGetValue(terminals[0], out var tc)) return;
                Grid.SetRow(tc, 0);
                Grid.SetColumn(tc, 0);
                tc.Visibility = Visibility.Visible;
                tc.ShowHeader = true;
                tc.IsZoomed = false;
                tc.Margin = new Thickness(1);
                return;
            }

            // Row 0 = 2* (big top), Row 1 = 1* (bottom row)
            TerminalHost.RowDefinitions.Add(new RowDefinition { Height = new GridLength(2, GridUnitType.Star) });
            TerminalHost.RowDefinitions.Add(new RowDefinition { Height = new GridLength(1, GridUnitType.Star) });

            int bottomCount = terminals.Count - 1;
            for (int c = 0; c < bottomCount; c++)
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());

            // First terminal: row 0, spans all columns
            if (_terminalControls.TryGetValue(terminals[0], out var topTc))
            {
                Grid.SetRow(topTc, 0);
                Grid.SetColumn(topTc, 0);
                Grid.SetColumnSpan(topTc, Math.Max(1, bottomCount));
                topTc.Visibility = Visibility.Visible;
                topTc.ShowHeader = true;
                topTc.IsZoomed = false;
                topTc.Margin = new Thickness(1);
            }

            // Rest: row 1, one per column
            for (int i = 1; i < terminals.Count; i++)
            {
                if (!_terminalControls.TryGetValue(terminals[i], out var tc)) continue;
                Grid.SetRow(tc, 1);
                Grid.SetColumn(tc, i - 1);
                tc.Visibility = Visibility.Visible;
                tc.ShowHeader = true;
                tc.IsZoomed = false;
                tc.Margin = new Thickness(1);
            }
        }

        private void LayoutThreeColumns()
        {
            var terminals = _viewModel.Terminals.ToList();
            if (terminals.Count == 0) return;

            int colCount = Math.Min(3, terminals.Count);
            for (int c = 0; c < colCount; c++)
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());

            // Calculate rows needed
            int rowCount = (int)Math.Ceiling((double)terminals.Count / colCount);
            for (int r = 0; r < rowCount; r++)
                TerminalHost.RowDefinitions.Add(new RowDefinition());

            for (int i = 0; i < terminals.Count; i++)
            {
                if (!_terminalControls.TryGetValue(terminals[i], out var tc)) continue;
                Grid.SetColumn(tc, i % colCount);
                Grid.SetRow(tc, i / colCount);
                tc.Visibility = Visibility.Visible;
                tc.ShowHeader = true;
                tc.IsZoomed = false;
                tc.Margin = new Thickness(1);
            }
        }

        private void LayoutHorizontal()
        {
            // All terminals in 1 row, N columns
            TerminalHost.RowDefinitions.Add(new RowDefinition());

            int i = 0;
            foreach (var vm in _viewModel.Terminals)
            {
                if (!_terminalControls.TryGetValue(vm, out var tc)) continue;
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());
                Grid.SetRow(tc, 0);
                Grid.SetColumn(tc, i);
                tc.Visibility = Visibility.Visible;
                tc.ShowHeader = true;
                tc.IsZoomed = false;
                tc.Margin = new Thickness(1);
                i++;
            }
        }

        private void LayoutVertical()
        {
            // All terminals in N rows, 1 column
            TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());

            int i = 0;
            foreach (var vm in _viewModel.Terminals)
            {
                if (!_terminalControls.TryGetValue(vm, out var tc)) continue;
                TerminalHost.RowDefinitions.Add(new RowDefinition());
                Grid.SetRow(tc, i);
                Grid.SetColumn(tc, 0);
                tc.Visibility = Visibility.Visible;
                tc.ShowHeader = true;
                tc.IsZoomed = false;
                tc.Margin = new Thickness(1);
                i++;
            }
        }

        // ---- Layout button click ----

        private void LayoutButton_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.Tag is string tag)
            {
                if (tag == "Tab")
                {
                    _viewModel.IsGridMode = false;
                }
                else
                {
                    _viewModel.SelectedPreset = tag;
                    // SelectedPreset setter already sets IsGridMode = true
                    // but if already in grid mode with same preset, force layout update
                    if (_viewModel.IsGridMode)
                        UpdateTerminalLayout();
                }
                UpdateLayoutButtonHighlights();
            }
        }

        private void UpdateLayoutButtonHighlights()
        {
            var accentBrush = FindResource("ThemeAccent") as Brush ?? Brushes.DodgerBlue;
            var defaultBg = FindResource("ThemeButtonBg") as Brush ?? new SolidColorBrush(Color.FromRgb(0x3c, 0x3c, 0x3c));
            var defaultFg = FindResource("ThemeMutedText") as Brush ?? Brushes.Gray;

            var buttons = new Dictionary<string, Button>
            {
                { "Tab", BtnLayoutTab },
                { "EvenGrid", BtnLayoutEvenGrid },
                { "BigTop", BtnLayoutBigTop },
                { "ThreeColumns", BtnLayoutThreeColumns },
                { "Horizontal", BtnLayoutHorizontal },
                { "Vertical", BtnLayoutVertical },
            };

            string activeKey = _viewModel.IsGridMode ? _viewModel.SelectedPreset : "Tab";

            foreach (var kvp in buttons)
            {
                bool isActive = kvp.Key == activeKey;
                kvp.Value.Background = isActive ? accentBrush : defaultBg;
                kvp.Value.Foreground = isActive ? Brushes.White : defaultFg;
                kvp.Value.BorderBrush = isActive ? accentBrush : new SolidColorBrush(Color.FromRgb(0x55, 0x55, 0x55));
            }
        }

        // ---- Keyboard: Ctrl+P quick switcher ----

        private void Window_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.P && Keyboard.Modifiers == ModifierKeys.Control)
            {
                OpenQuickSwitcher();
                e.Handled = true;
            }
            else if (e.Key == Key.F && Keyboard.Modifiers == ModifierKeys.Control)
            {
                // Delegate to active terminal
                if (_viewModel.SelectedTerminal != null &&
                    _terminalControls.TryGetValue(_viewModel.SelectedTerminal, out var tc))
                {
                    tc.ToggleSearch();
                    e.Handled = true;
                }
            }
        }

        private void OpenQuickSwitcher()
        {
            if (_viewModel.Terminals.Count == 0) return;

            var popup = new QuickSwitcherPopup(_viewModel.Terminals)
            {
                Owner = this
            };

            if (popup.ShowDialog() == true && popup.SelectedTerminal != null)
            {
                _viewModel.SelectedTerminal = popup.SelectedTerminal;
                _viewModel.RaiseFocusTerminal(popup.SelectedTerminal);
            }
        }

        // ---- Tab rename (inline in tab strip) ----

        private void TabNameText_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ClickCount == 2 && sender is TextBlock tb)
            {
                StartTabRename(tb);
                e.Handled = true;
            }
        }

        private void StartTabRename(TextBlock nameText)
        {
            if (nameText.Parent is StackPanel sp)
            {
                var renameBox = sp.Children.OfType<TextBox>().FirstOrDefault(t => t.Name == "TabRenameBox");
                if (renameBox != null && nameText.DataContext is TerminalViewModel vm)
                {
                    vm.IsRenaming = true;
                    nameText.Visibility = Visibility.Collapsed;
                    renameBox.Visibility = Visibility.Visible;
                    renameBox.Text = vm.Name;
                    renameBox.SelectAll();
                    renameBox.Focus();
                }
            }
        }

        private void CommitTabRename(TextBox renameBox)
        {
            if (renameBox.DataContext is TerminalViewModel vm)
            {
                vm.IsRenaming = false;
                var newName = renameBox.Text?.Trim();
                if (!string.IsNullOrEmpty(newName))
                    vm.Name = newName;

                if (renameBox.Parent is StackPanel sp)
                {
                    var nameText = sp.Children.OfType<TextBlock>()
                        .FirstOrDefault(t => t.Name == "TabNameText");
                    if (nameText != null)
                        nameText.Visibility = Visibility.Visible;
                }
                renameBox.Visibility = Visibility.Collapsed;
            }
        }

        private void CancelTabRename(TextBox renameBox)
        {
            if (renameBox.DataContext is TerminalViewModel vm)
            {
                vm.IsRenaming = false;
                renameBox.Text = vm.Name;

                if (renameBox.Parent is StackPanel sp)
                {
                    var nameText = sp.Children.OfType<TextBlock>()
                        .FirstOrDefault(t => t.Name == "TabNameText");
                    if (nameText != null)
                        nameText.Visibility = Visibility.Visible;
                }
                renameBox.Visibility = Visibility.Collapsed;
            }
        }

        private void TabRenameBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter && sender is TextBox tb)
            {
                CommitTabRename(tb);
                e.Handled = true;
            }
            else if (e.Key == Key.Escape && sender is TextBox tb2)
            {
                CancelTabRename(tb2);
                e.Handled = true;
            }
        }

        private void TabRenameBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (sender is TextBox tb && tb.DataContext is TerminalViewModel vm && vm.IsRenaming)
                CommitTabRename(tb);
        }

        // ---- Tab context menu with Move Left/Right ----

        private void TabHeaderList_MouseRightButtonUp(object sender, MouseButtonEventArgs e)
        {
            var lbi = FindAncestor<ListBoxItem>((DependencyObject)e.OriginalSource);
            if (lbi == null || lbi.DataContext is not TerminalViewModel vm) return;

            int idx = _viewModel.Terminals.IndexOf(vm);
            var menu = new ContextMenu();

            var renameItem = new MenuItem { Header = "Rename" };
            renameItem.Click += (s, _) =>
            {
                var nameText = FindVisualChild<TextBlock>(lbi, "TabNameText");
                if (nameText != null)
                    StartTabRename(nameText);
            };
            menu.Items.Add(renameItem);

            menu.Items.Add(new Separator());

            var moveLeftItem = new MenuItem { Header = "Move Left", IsEnabled = idx > 0 };
            moveLeftItem.Click += (s, _) => _viewModel.MoveTerminal(idx, idx - 1);

            var moveRightItem = new MenuItem { Header = "Move Right", IsEnabled = idx < _viewModel.Terminals.Count - 1 };
            moveRightItem.Click += (s, _) => _viewModel.MoveTerminal(idx, idx + 1);

            menu.Items.Add(moveLeftItem);
            menu.Items.Add(moveRightItem);

            menu.Items.Add(new Separator());

            var closeItem = new MenuItem { Header = "Close" };
            closeItem.Click += (s, _) => _viewModel.CloseTerminalCommand.Execute(vm);
            menu.Items.Add(closeItem);

            menu.PlacementTarget = lbi;
            menu.IsOpen = true;
            e.Handled = true;
        }

        // ---- Terminal cell context menu (works in all display modes) ----

        private void ShowTerminalCellContextMenu(TerminalViewModel vm, TerminalControl tc)
        {
            int idx = _viewModel.Terminals.IndexOf(vm);
            var menu = new ContextMenu();

            var renameItem = new MenuItem { Header = "Rename" };
            renameItem.Click += (s, _) =>
            {
                if (_viewModel.IsGridMode)
                {
                    tc.TriggerRename();
                }
                else
                {
                    // Tab mode: trigger rename on the tab header
                    var lbi = TabHeaderList.ItemContainerGenerator.ContainerFromItem(vm) as ListBoxItem;
                    if (lbi != null)
                    {
                        var nameText = FindVisualChild<TextBlock>(lbi, "TabNameText");
                        if (nameText != null)
                            StartTabRename(nameText);
                    }
                }
            };
            menu.Items.Add(renameItem);

            menu.Items.Add(new Separator());

            var moveLeftItem = new MenuItem { Header = "Move Left", IsEnabled = idx > 0 };
            moveLeftItem.Click += (s, _) => _viewModel.MoveTerminal(idx, idx - 1);

            var moveRightItem = new MenuItem { Header = "Move Right", IsEnabled = idx < _viewModel.Terminals.Count - 1 };
            moveRightItem.Click += (s, _) => _viewModel.MoveTerminal(idx, idx + 1);

            menu.Items.Add(moveLeftItem);
            menu.Items.Add(moveRightItem);

            menu.Items.Add(new Separator());

            var closeItem = new MenuItem { Header = "Close" };
            closeItem.Click += (s, _) => _viewModel.CloseTerminalCommand.Execute(vm);
            menu.Items.Add(closeItem);

            menu.PlacementTarget = tc;
            menu.IsOpen = true;
        }

        // ---- Helpers ----

        private static T FindVisualChild<T>(DependencyObject parent, string name) where T : FrameworkElement
        {
            for (int i = 0; i < VisualTreeHelper.GetChildrenCount(parent); i++)
            {
                var child = VisualTreeHelper.GetChild(parent, i);
                if (child is T fe && fe.Name == name)
                    return fe;

                var found = FindVisualChild<T>(child, name);
                if (found != null)
                    return found;
            }
            return null;
        }

        private static T FindAncestor<T>(DependencyObject current) where T : DependencyObject
        {
            while (current != null)
            {
                if (current is T t)
                    return t;
                current = VisualTreeHelper.GetParent(current);
            }
            return null;
        }

        // ---- Event handlers ----

        private void Window_Closing(object sender, CancelEventArgs e)
        {
            _viewModel.AutoSaveSession();
            ToastNotificationService.Cleanup();
            _viewModel.CloseAllTerminals();
        }

        // ---- Tools dropdown menu ----

        private void ToolsButton_Click(object sender, RoutedEventArgs e)
        {
            var menu = new ContextMenu();

            // Profiles submenu (quick-create + manage)
            var profilesItem = new MenuItem { Header = "Profiles" };
            var profiles = TerminalProfileStore.Load();
            if (profiles.Count == 0)
            {
                var emptyItem = new MenuItem { Header = "(No profiles)", IsEnabled = false };
                profilesItem.Items.Add(emptyItem);
            }
            else
            {
                foreach (var p in profiles)
                {
                    var profileItem = new MenuItem { Header = p.Name, Tag = p };
                    profileItem.Click += (s, _) =>
                    {
                        if (s is MenuItem mi && mi.Tag is TerminalProfile prof)
                            _viewModel.CreateTerminalFromProfile(prof);
                    };
                    profilesItem.Items.Add(profileItem);
                }
            }
            profilesItem.Items.Add(new Separator());
            var manageProfilesItem = new MenuItem { Header = "Manage Profiles..." };
            manageProfilesItem.Click += (s, _) =>
            {
                var dlg = new ProfileManagerDialog { Owner = this };
                dlg.ShowDialog();
            };
            profilesItem.Items.Add(manageProfilesItem);
            menu.Items.Add(profilesItem);

            menu.Items.Add(new Separator());

            // Broadcast → open popup window
            var broadcastItem = new MenuItem { Header = "Broadcast" };
            broadcastItem.Click += (s, _) => OpenBroadcastWindow();
            menu.Items.Add(broadcastItem);

            menu.Items.Add(new Separator());

            // Snippets
            var snippetsItem = new MenuItem { Header = "Snippets" };
            snippetsItem.Click += (s, _) =>
            {
                var dlg = new SnippetManagerDialog { Owner = this };
                dlg.ShowDialog();
            };
            menu.Items.Add(snippetsItem);

            // Sessions
            var sessionsItem = new MenuItem { Header = "Sessions" };
            sessionsItem.Click += (s, _) =>
            {
                var dlg = new SessionManagerDialog { Owner = this };
                dlg.SetCurrentSessionCapture(_viewModel.CaptureCurrentSession(""));
                if (dlg.ShowDialog() == true && dlg.SessionToLoad != null)
                {
                    _viewModel.RestoreSession(dlg.SessionToLoad);
                }
            };
            menu.Items.Add(sessionsItem);

            menu.Items.Add(new Separator());

            // Theme Settings
            var themeItem = new MenuItem { Header = "Theme Settings..." };
            themeItem.Click += (s, _) =>
            {
                var dlg = new ThemeSettingsDialog { Owner = this };
                dlg.ShowDialog();
            };
            menu.Items.Add(themeItem);

            menu.Items.Add(new Separator());

            // Help
            var helpItem = new MenuItem { Header = "Help" };
            helpItem.Click += (s, _) => ShowHelp();
            menu.Items.Add(helpItem);

            menu.PlacementTarget = ToolsButton;
            menu.Placement = System.Windows.Controls.Primitives.PlacementMode.Bottom;
            menu.IsOpen = true;
        }

        private void OpenBroadcastWindow()
        {
            if (_broadcastWindow != null)
            {
                _broadcastWindow.Activate();
                return;
            }

            _viewModel.IsBroadcastMode = true;
            _broadcastWindow = new BroadcastWindow(_viewModel.Terminals) { Owner = this };
            _broadcastWindow.SendRequested += text =>
            {
                foreach (var kvp in _terminalControls)
                {
                    if (kvp.Key.IsBroadcastTarget)
                        kvp.Value.SendBroadcastCommand(text);
                }
            };
            _broadcastWindow.Closed += (s, _) =>
            {
                _viewModel.IsBroadcastMode = false;
                _broadcastWindow = null;
            };
            _broadcastWindow.Show();
        }

        private void ShowHelp()
        {
            MessageBox.Show(
                "HƯỚNG DẪN SỬ DỤNG - MULTI TERMINAL MANAGER\n" +
                "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n\n" +
                "CÁC PHÍM TẮT:\n" +
                "  Ctrl+P          Chuyển terminal nhanh\n" +
                "  Ctrl+Tab        Terminal tiếp theo\n" +
                "  Ctrl+Shift+Tab  Terminal trước đó\n" +
                "  Ctrl+1~9        Nhảy đến terminal theo số\n" +
                "  Ctrl+F          Tìm kiếm trong output\n" +
                "  Ctrl+Shift+S    Mở snippet picker\n" +
                "  Ctrl+C          Ngắt lệnh (khi ô nhập trống)\n" +
                "  Ctrl+L          Xoá màn hình terminal\n" +
                "  F3 / Shift+F3   Kết quả tìm kiếm tiếp/trước\n\n" +
                "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n\n" +
                "TOOLS MENU:\n" +
                "  Profiles     Tạo nhanh terminal từ profile đã lưu\n" +
                "  Broadcast    Gửi cùng lệnh đến nhiều terminal\n" +
                "  Snippets     Quản lý các lệnh hay dùng\n" +
                "  Sessions     Lưu/khôi phục workspace\n" +
                "  Theme        Tuỳ chỉnh màu sắc giao diện\n\n" +
                "TÌM KIẾM (Ctrl+F):\n" +
                "  • Nhấn Ctrl+F để mở thanh tìm kiếm\n" +
                "  • F3 = kết quả tiếp, Shift+F3 = kết quả trước\n\n" +
                "THÔNG BÁO HOÀN THÀNH LỆNH:\n" +
                "  • Khi lệnh chạy > 10 giây và bạn ở tab khác\n" +
                "    → thông báo Windows sẽ hiện ra\n" +
                "  • Chấm xanh lá trên tab = lệnh đã hoàn thành",
                "Hướng dẫn sử dụng", MessageBoxButton.OK, MessageBoxImage.Information);
        }

    }
}
