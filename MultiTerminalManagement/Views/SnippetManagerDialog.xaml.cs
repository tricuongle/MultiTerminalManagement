using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public partial class SnippetManagerDialog : Window
    {
        private List<Snippet> _snippets;
        private Snippet _selected;

        public SnippetManagerDialog()
        {
            InitializeComponent();
            _snippets = SnippetStore.Load();
            RefreshList();
        }

        private void RefreshList()
        {
            SnippetList.Items.Clear();
            var grouped = _snippets.GroupBy(s => s.Category).OrderBy(g => g.Key);
            foreach (var group in grouped)
            {
                SnippetList.Items.Add(new ListBoxItem
                {
                    Content = $"-- {group.Key} --",
                    IsEnabled = false,
                    Foreground = System.Windows.Media.Brushes.Gray,
                    FontStyle = FontStyles.Italic
                });

                foreach (var s in group)
                    SnippetList.Items.Add(s.Name);
            }

            if (_selected != null)
            {
                for (int i = 0; i < SnippetList.Items.Count; i++)
                {
                    if (SnippetList.Items[i] is string name && name == _selected.Name)
                    {
                        SnippetList.SelectedIndex = i;
                        break;
                    }
                }
            }
        }

        private void SnippetList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (SnippetList.SelectedItem is string name)
            {
                _selected = _snippets.FirstOrDefault(s => s.Name == name);
                if (_selected != null)
                {
                    SnipNameBox.Text = _selected.Name;
                    SnipCatBox.Text = _selected.Category;
                    SnipCmdBox.Text = _selected.Command;
                }
            }
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            var s = new Snippet();
            _snippets.Add(s);
            _selected = s;
            RefreshList();
            SnipNameBox.Text = s.Name;
            SnipCatBox.Text = s.Category;
            SnipCmdBox.Text = s.Command;
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (_selected == null) return;
            _snippets.Remove(_selected);
            _selected = null;
            SnippetStore.Save(_snippets);
            RefreshList();
            SnipNameBox.Text = "";
            SnipCatBox.Text = "";
            SnipCmdBox.Text = "";
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (_selected == null) return;
            _selected.Name = SnipNameBox.Text?.Trim() ?? "Snippet";
            _selected.Category = string.IsNullOrWhiteSpace(SnipCatBox.Text) ? "General" : SnipCatBox.Text.Trim();
            _selected.Command = SnipCmdBox.Text ?? "";
            SnippetStore.Save(_snippets);
            RefreshList();
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
