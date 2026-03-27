using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;

namespace MultiTerminalManagement.Views
{
    public partial class PlaceholderInputDialog : Window
    {
        private readonly List<string> _placeholders;
        private readonly Dictionary<string, TextBox> _inputs = new();

        public Dictionary<string, string> Values { get; } = new();

        public PlaceholderInputDialog(string command)
        {
            InitializeComponent();

            // Find unique {{variable}} placeholders
            _placeholders = Regex.Matches(command, @"\{\{(\w+)\}\}")
                .Cast<Match>()
                .Select(m => m.Groups[1].Value)
                .Distinct()
                .ToList();

            foreach (var ph in _placeholders)
            {
                var sp = new StackPanel { Margin = new Thickness(0, 0, 0, 6) };
                sp.Children.Add(new TextBlock
                {
                    Text = ph + ":",
                    Foreground = System.Windows.Media.Brushes.LightGray,
                    Margin = new Thickness(0, 0, 0, 2)
                });
                var tb = new TextBox
                {
                    Background = System.Windows.Media.Brushes.White,
                    Padding = new Thickness(4),
                    FontFamily = new System.Windows.Media.FontFamily("Consolas")
                };
                _inputs[ph] = tb;
                sp.Children.Add(tb);
                PlaceholderList.Items.Add(sp);
            }

            Loaded += (s, e) =>
            {
                if (_inputs.Count > 0)
                    _inputs.Values.First().Focus();
            };
        }

        private void OK_Click(object sender, RoutedEventArgs e)
        {
            foreach (var kvp in _inputs)
                Values[kvp.Key] = kvp.Value.Text ?? "";
            DialogResult = true;
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }

        public static string ResolveCommand(string command, Window owner)
        {
            if (!Regex.IsMatch(command, @"\{\{\w+\}\}"))
                return command;

            var dlg = new PlaceholderInputDialog(command) { Owner = owner };
            if (dlg.ShowDialog() != true) return null;

            string result = command;
            foreach (var kvp in dlg.Values)
                result = result.Replace("{{" + kvp.Key + "}}", kvp.Value);

            return result;
        }
    }
}
