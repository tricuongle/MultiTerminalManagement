using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace MultiTerminalManagement.Views
{
    public partial class TerminalSearchBar : UserControl
    {
        private string _fullText = "";
        private List<int> _matchPositions = new();
        private int _currentMatch = -1;

        public event EventHandler CloseRequested;
        public event EventHandler<int> HighlightMatch;

        public TerminalSearchBar()
        {
            InitializeComponent();
        }

        public void SetText(string text)
        {
            _fullText = text ?? "";
        }

        public void FocusSearch()
        {
            SearchTextBox.Focus();
            SearchTextBox.SelectAll();
        }

        private void PerformSearch()
        {
            _matchPositions.Clear();
            _currentMatch = -1;

            var query = SearchTextBox.Text;
            if (string.IsNullOrEmpty(query) || string.IsNullOrEmpty(_fullText))
            {
                MatchCount.Text = "0/0";
                return;
            }

            int idx = 0;
            while ((idx = _fullText.IndexOf(query, idx, StringComparison.OrdinalIgnoreCase)) != -1)
            {
                _matchPositions.Add(idx);
                idx += query.Length;
            }

            if (_matchPositions.Count > 0)
            {
                _currentMatch = 0;
                MatchCount.Text = $"1/{_matchPositions.Count}";
                HighlightMatch?.Invoke(this, _matchPositions[0]);
            }
            else
            {
                MatchCount.Text = "0/0";
            }
        }

        public void NavigateNext()
        {
            if (_matchPositions.Count == 0) return;
            _currentMatch = (_currentMatch + 1) % _matchPositions.Count;
            MatchCount.Text = $"{_currentMatch + 1}/{_matchPositions.Count}";
            HighlightMatch?.Invoke(this, _matchPositions[_currentMatch]);
        }

        public void NavigatePrevious()
        {
            if (_matchPositions.Count == 0) return;
            _currentMatch = (_currentMatch - 1 + _matchPositions.Count) % _matchPositions.Count;
            MatchCount.Text = $"{_currentMatch + 1}/{_matchPositions.Count}";
            HighlightMatch?.Invoke(this, _matchPositions[_currentMatch]);
        }

        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            PerformSearch();
        }

        private void SearchTextBox_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Escape)
            {
                CloseRequested?.Invoke(this, EventArgs.Empty);
                e.Handled = true;
            }
            else if (e.Key == Key.F3 && Keyboard.Modifiers == ModifierKeys.Shift)
            {
                NavigatePrevious();
                e.Handled = true;
            }
            else if (e.Key == Key.F3)
            {
                NavigateNext();
                e.Handled = true;
            }
            else if (e.Key == Key.Enter)
            {
                NavigateNext();
                e.Handled = true;
            }
        }

        private void Previous_Click(object sender, RoutedEventArgs e)
        {
            NavigatePrevious();
        }

        private void Next_Click(object sender, RoutedEventArgs e)
        {
            NavigateNext();
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            CloseRequested?.Invoke(this, EventArgs.Empty);
        }
    }
}
