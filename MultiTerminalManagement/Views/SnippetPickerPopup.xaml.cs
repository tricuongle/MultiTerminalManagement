using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public partial class SnippetPickerPopup : Window
    {
        private readonly List<Snippet> _allSnippets;

        public Snippet SelectedSnippet { get; private set; }

        public SnippetPickerPopup()
        {
            InitializeComponent();
            _allSnippets = SnippetStore.Load();
            ResultsList.ItemsSource = _allSnippets;

            if (_allSnippets.Count > 0)
                ResultsList.SelectedIndex = 0;

            Loaded += (s, e) => SearchBox.Focus();
        }

        private void SearchBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var query = SearchBox.Text?.Trim().ToLowerInvariant() ?? "";
            if (string.IsNullOrEmpty(query))
            {
                ResultsList.ItemsSource = _allSnippets;
            }
            else
            {
                var filtered = _allSnippets
                    .Where(s => s.Name.ToLowerInvariant().Contains(query)
                             || s.Category.ToLowerInvariant().Contains(query)
                             || s.Command.ToLowerInvariant().Contains(query))
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
            if (ResultsList.SelectedItem is Snippet s)
            {
                SelectedSnippet = s;
                DialogResult = true;
                Close();
            }
        }

        private void Window_Deactivated(object sender, System.EventArgs e)
        {
            if (IsVisible)
            {
                DialogResult = false;
                Close();
            }
        }
    }
}
