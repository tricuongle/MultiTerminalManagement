using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Shapes;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public partial class ThemeSettingsDialog : Window
    {
        public ThemeSettingsDialog()
        {
            InitializeComponent();
            LoadCurrentSettings();
        }

        private void LoadCurrentSettings()
        {
            var s = AppSettings.Load();
            AccentBox.Text = s.ThemeAccentColor;
            HeaderBgBox.Text = s.ThemeHeaderBg;
            MainBgBox.Text = s.ThemeMainBg;
            InputBgBox.Text = s.ThemeInputBg;
            TextColorBox.Text = s.ThemeTextColor;
            MutedTextBox.Text = s.ThemeMutedText;
            UpdateAllPreviews();
        }

        private void ColorBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (sender is TextBox tb)
            {
                var preview = GetPreviewForBox(tb);
                if (preview != null)
                    UpdatePreview(preview, tb.Text);
            }
        }

        private Rectangle GetPreviewForBox(TextBox tb)
        {
            if (tb == AccentBox) return AccentPreview;
            if (tb == HeaderBgBox) return HeaderBgPreview;
            if (tb == MainBgBox) return MainBgPreview;
            if (tb == InputBgBox) return InputBgPreview;
            if (tb == TextColorBox) return TextColorPreview;
            if (tb == MutedTextBox) return MutedTextPreview;
            return null;
        }

        private void UpdateAllPreviews()
        {
            UpdatePreview(AccentPreview, AccentBox.Text);
            UpdatePreview(HeaderBgPreview, HeaderBgBox.Text);
            UpdatePreview(MainBgPreview, MainBgBox.Text);
            UpdatePreview(InputBgPreview, InputBgBox.Text);
            UpdatePreview(TextColorPreview, TextColorBox.Text);
            UpdatePreview(MutedTextPreview, MutedTextBox.Text);
        }

        private static void UpdatePreview(Rectangle rect, string hex)
        {
            try
            {
                var color = (Color)ColorConverter.ConvertFromString(hex);
                rect.Fill = new SolidColorBrush(color);
            }
            catch
            {
                rect.Fill = Brushes.Transparent;
            }
        }

        private void SetPreset(string accent, string headerBg, string mainBg, string inputBg, string text, string muted)
        {
            AccentBox.Text = accent;
            HeaderBgBox.Text = headerBg;
            MainBgBox.Text = mainBg;
            InputBgBox.Text = inputBg;
            TextColorBox.Text = text;
            MutedTextBox.Text = muted;
            UpdateAllPreviews();
        }

        private void PresetDark_Click(object sender, RoutedEventArgs e) =>
            SetPreset("#0e639c", "#2d2d2d", "#1e1e1e", "#252526", "#E0E0E0", "#999999");

        private void PresetDarker_Click(object sender, RoutedEventArgs e) =>
            SetPreset("#0e639c", "#1a1a1a", "#0e0e0e", "#141414", "#D4D4D4", "#808080");

        private void PresetBlue_Click(object sender, RoutedEventArgs e) =>
            SetPreset("#264f78", "#1b2a3a", "#0d1b2a", "#112233", "#c9d1d9", "#8b949e");

        private void PresetGreen_Click(object sender, RoutedEventArgs e) =>
            SetPreset("#16825d", "#1a2e1a", "#0d1f0d", "#112211", "#c9d9c9", "#7a9e7a");

        private void Apply_Click(object sender, RoutedEventArgs e)
        {
            var s = AppSettings.Load();
            s.ThemeAccentColor = AccentBox.Text.Trim();
            s.ThemeHeaderBg = HeaderBgBox.Text.Trim();
            s.ThemeMainBg = MainBgBox.Text.Trim();
            s.ThemeInputBg = InputBgBox.Text.Trim();
            s.ThemeTextColor = TextColorBox.Text.Trim();
            s.ThemeMutedText = MutedTextBox.Text.Trim();
            s.Save();

            App.ApplyTheme(s);
        }

        private void Close_Click(object sender, RoutedEventArgs e) => Close();
    }
}
