using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using MultiTerminalManagement.ViewModels;

namespace MultiTerminalManagement.Views
{
    public partial class QuickSwitcherPopup : Window
    {
        private readonly List<TerminalViewModel> _allTerminals;

        public TerminalViewModel SelectedTerminal { get; private set; }

        public QuickSwitcherPopup(IEnumerable<TerminalViewModel> terminals)
        {
            InitializeComponent();
            _allTerminals = terminals.ToList();
            ResultsList.ItemsSource = _allTerminals;

            if (_allTerminals.Count > 0)
                ResultsList.SelectedIndex = 0;

            Loaded += (s, e) => SearchBox.Focus();
        }

        private void SearchBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var query = SearchBox.Text?.Trim().ToLowerInvariant() ?? "";
            if (string.IsNullOrEmpty(query))
            {
                ResultsList.ItemsSource = _allTerminals;
            }
            else
            {
                var filtered = _allTerminals
                    .Where(t => t.Name.ToLowerInvariant().Contains(query)
                             || t.DisplayIndex.Contains(query)
                             || t.Type.ToString().ToLowerInvariant().Contains(query))
                    .ToList();
                ResultsList.ItemsSource = filtered;
            }

            if (ResultsList.Items.Count > 0)
                ResultsList.SelectedIndex = 0;
        }

        private void Window_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Escape)
            {
                DialogResult = false;
                Close();
                e.Handled = true;
            }
            else if (e.Key == Key.Enter)
            {
                SelectAndClose();
                e.Handled = true;
            }
            else if (e.Key == Key.Down)
            {
                if (ResultsList.Items.Count > 0)
                {
                    int next = (ResultsList.SelectedIndex + 1) % ResultsList.Items.Count;
                    ResultsList.SelectedIndex = next;
                    ResultsList.ScrollIntoView(ResultsList.SelectedItem);
                }
                e.Handled = true;
            }
            else if (e.Key == Key.Up)
            {
                if (ResultsList.Items.Count > 0)
                {
                    int prev = (ResultsList.SelectedIndex - 1 + ResultsList.Items.Count) % ResultsList.Items.Count;
                    ResultsList.SelectedIndex = prev;
                    ResultsList.ScrollIntoView(ResultsList.SelectedItem);
                }
                e.Handled = true;
            }
        }

        private void ResultsList_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            SelectAndClose();
        }

        private void SelectAndClose()
        {
            if (ResultsList.SelectedItem is TerminalViewModel vm)
            {
                SelectedTerminal = vm;
                DialogResult = true;
                Close();
            }
        }

        private void Window_Deactivated(object sender, System.EventArgs e)
        {
            // Close when losing focus (clicking outside)
            if (IsVisible)
            {
                DialogResult = false;
                Close();
            }
        }
    }
}
