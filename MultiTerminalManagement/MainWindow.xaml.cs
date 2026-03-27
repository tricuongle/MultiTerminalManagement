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

        // Drag-reorder state
        private Point _dragStartPoint;

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
        }

        // ---- Settings persistence ----

        private void LoadSettings()
        {
            var s = AppSettings.Load();
            _viewModel.GridColumns = s.GridColumns;
            _viewModel.GridRows = s.GridRows;
            _viewModel.FontSize = s.FontSize;

            SelectComboByContent(ColumnsCombo, s.GridColumns.ToString());
            SelectComboByContent(RowsCombo, s.GridRows.ToString());
            SelectComboByContent(FontSizeCombo, s.FontSize.ToString());
        }

        private void SaveSettings()
        {
            if (!_initialized) return;
            new AppSettings
            {
                GridColumns = _viewModel.GridColumns,
                GridRows = _viewModel.GridRows,
                FontSize = _viewModel.FontSize
            }.Save();
        }

        private static void SelectComboByContent(ComboBox combo, string value)
        {
            for (int i = 0; i < combo.Items.Count; i++)
            {
                if (combo.Items[i] is ComboBoxItem item && item.Content?.ToString() == value)
                {
                    combo.SelectedIndex = i;
                    return;
                }
            }
        }

        // ---- Terminal lifecycle ----

        private void Terminals_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Add)
            {
                foreach (TerminalViewModel vm in e.NewItems)
                {
                    var tc = new TerminalControl { DataContext = vm };
                    tc.CloseRequested += (s, _) => _viewModel.CloseTerminalCommand.Execute(vm);
                    tc.ZoomRequested += (s, _) => ToggleZoom(vm);
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
                // Rebuild the TerminalHost children in the new order
                TerminalHost.Children.Clear();
                foreach (var vm in _viewModel.Terminals)
                {
                    if (_terminalControls.TryGetValue(vm, out var tc))
                        TerminalHost.Children.Add(tc);
                }
            }

            UpdateTerminalLayout();
        }

        private void ViewModel_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName is nameof(MainViewModel.SelectedTerminal)
                or nameof(MainViewModel.IsGridMode)
                or nameof(MainViewModel.GridColumns)
                or nameof(MainViewModel.GridRows))
            {
                if (e.PropertyName == nameof(MainViewModel.IsGridMode))
                    _zoomedTerminal = null;
                UpdateTerminalLayout();

                // Focus the selected terminal's input when switching tabs
                if (e.PropertyName == nameof(MainViewModel.SelectedTerminal))
                    FocusSelectedTerminal();
            }

            if (e.PropertyName == nameof(MainViewModel.FontSize))
            {
                foreach (var tc in _terminalControls.Values)
                    tc.UpdateFontSize(_viewModel.FontSize);
            }

            if (e.PropertyName is nameof(MainViewModel.GridColumns)
                or nameof(MainViewModel.GridRows)
                or nameof(MainViewModel.FontSize))
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

            if (_terminalControls.Count == 0) return;

            if (_viewModel.IsGridMode)
            {
                if (_zoomedTerminal != null && _terminalControls.ContainsKey(_zoomedTerminal))
                {
                    TerminalHost.RowDefinitions.Add(new RowDefinition());
                    TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());

                    foreach (var kvp in _terminalControls)
                    {
                        Grid.SetRow(kvp.Value, 0);
                        Grid.SetColumn(kvp.Value, 0);
                        bool isZoomed = kvp.Key == _zoomedTerminal;
                        kvp.Value.Visibility = isZoomed ? Visibility.Visible : Visibility.Collapsed;
                        kvp.Value.ShowHeader = true;
                        kvp.Value.IsZoomed = isZoomed;
                        kvp.Value.Margin = new Thickness(0);
                    }
                }
                else
                {
                    var cols = Math.Max(1, _viewModel.GridColumns);
                    var rows = Math.Max(1, _viewModel.GridRows);

                    for (int r = 0; r < rows; r++)
                        TerminalHost.RowDefinitions.Add(new RowDefinition());
                    for (int c = 0; c < cols; c++)
                        TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());

                    int i = 0;
                    foreach (var kvp in _terminalControls)
                    {
                        Grid.SetRow(kvp.Value, i / cols);
                        Grid.SetColumn(kvp.Value, i % cols);
                        kvp.Value.Visibility = (i < rows * cols)
                            ? Visibility.Visible
                            : Visibility.Collapsed;
                        kvp.Value.ShowHeader = true;
                        kvp.Value.IsZoomed = false;
                        kvp.Value.Margin = new Thickness(1);
                        i++;
                    }
                }
            }
            else
            {
                _zoomedTerminal = null;
                TerminalHost.RowDefinitions.Add(new RowDefinition());
                TerminalHost.ColumnDefinitions.Add(new ColumnDefinition());

                foreach (var kvp in _terminalControls)
                {
                    Grid.SetRow(kvp.Value, 0);
                    Grid.SetColumn(kvp.Value, 0);
                    kvp.Value.Visibility = kvp.Key == _viewModel.SelectedTerminal
                        ? Visibility.Visible
                        : Visibility.Collapsed;
                    kvp.Value.ShowHeader = false;
                    kvp.Value.IsZoomed = false;
                    kvp.Value.Margin = new Thickness(0);
                }
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
            // Find the sibling TextBox in the same StackPanel
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

        // ---- Tab context menu (created programmatically to avoid XAML compiler issues with Click in Styles) ----

        private void TabHeaderList_MouseRightButtonUp(object sender, MouseButtonEventArgs e)
        {
            var lbi = FindAncestor<ListBoxItem>((DependencyObject)e.OriginalSource);
            if (lbi == null || lbi.DataContext is not TerminalViewModel vm) return;

            var menu = new ContextMenu();

            var renameItem = new MenuItem { Header = "Rename" };
            renameItem.Click += (s, _) =>
            {
                var nameText = FindVisualChild<TextBlock>(lbi, "TabNameText");
                if (nameText != null)
                    StartTabRename(nameText);
            };

            var closeItem = new MenuItem { Header = "Close" };
            closeItem.Click += (s, _) => _viewModel.CloseTerminalCommand.Execute(vm);

            menu.Items.Add(renameItem);
            menu.Items.Add(new Separator());
            menu.Items.Add(closeItem);

            menu.PlacementTarget = lbi;
            menu.IsOpen = true;
            e.Handled = true;
        }

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

        // ---- Drag to reorder tabs ----

        private TerminalViewModel _draggedTab;

        private void TabHeaderList_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            _dragStartPoint = e.GetPosition(null);
            var lbi = FindAncestor<ListBoxItem>((DependencyObject)e.OriginalSource);
            _draggedTab = lbi?.DataContext as TerminalViewModel;
        }

        private void TabHeaderList_PreviewMouseMove(object sender, MouseEventArgs e)
        {
            if (e.LeftButton != MouseButtonState.Pressed || _draggedTab == null) return;
            if (_draggedTab.IsRenaming) return;

            var pos = e.GetPosition(null);
            var diff = _dragStartPoint - pos;

            if (Math.Abs(diff.X) > SystemParameters.MinimumHorizontalDragDistance ||
                Math.Abs(diff.Y) > SystemParameters.MinimumVerticalDragDistance)
            {
                // Release mouse capture so DragDrop can take over
                if (Mouse.Captured != null)
                    Mouse.Captured.ReleaseMouseCapture();

                var data = new DataObject("TerminalTab", _draggedTab);
                DragDrop.DoDragDrop(TabHeaderList, data, DragDropEffects.Move);
                _draggedTab = null;
            }
        }

        private void TabHeaderList_DragOver(object sender, DragEventArgs e)
        {
            if (!e.Data.GetDataPresent("TerminalTab"))
            {
                e.Effects = DragDropEffects.None;
            }
            else
            {
                e.Effects = DragDropEffects.Move;
            }
            e.Handled = true;
        }

        private void TabHeaderList_Drop(object sender, DragEventArgs e)
        {
            if (!e.Data.GetDataPresent("TerminalTab")) return;

            var source = e.Data.GetData("TerminalTab") as TerminalViewModel;
            if (source == null) return;

            // Find the target ListBoxItem under the drop point
            var targetItem = FindAncestor<ListBoxItem>((DependencyObject)e.OriginalSource);
            if (targetItem == null) return;

            var target = targetItem.DataContext as TerminalViewModel;
            if (target == null || target == source) return;

            int oldIndex = _viewModel.Terminals.IndexOf(source);
            int newIndex = _viewModel.Terminals.IndexOf(target);
            _viewModel.MoveTerminal(oldIndex, newIndex);
            e.Handled = true;
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
            _viewModel.CloseAllTerminals();
        }

        private void ColumnsCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (_viewModel == null) return;
            if (sender is ComboBox combo && combo.SelectedItem is ComboBoxItem item)
                if (int.TryParse(item.Content?.ToString(), out int val))
                    _viewModel.GridColumns = val;
        }

        private void RowsCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (_viewModel == null) return;
            if (sender is ComboBox combo && combo.SelectedItem is ComboBoxItem item)
                if (int.TryParse(item.Content?.ToString(), out int val))
                    _viewModel.GridRows = val;
        }

        private void FontSizeCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (_viewModel == null) return;
            if (sender is ComboBox combo && combo.SelectedItem is ComboBoxItem item)
                if (int.TryParse(item.Content?.ToString(), out int val))
                    _viewModel.FontSize = val;
        }
    }
}
