using System;
using System.IO;
using System.Text.Json;

namespace MultiTerminalManagement.Models
{
    public class AppSettings
    {
        public int GridColumns { get; set; } = 2;
        public int GridRows { get; set; } = 2;
        public int FontSize { get; set; } = 12;
        public bool AutoRestoreSession { get; set; } = false;
        public bool IsAutoGrid { get; set; } = true;
        public string LayoutPreset { get; set; } = "EvenGrid";
        public bool NotifyOnCommandCompletion { get; set; } = true;
        public int NotificationThresholdSeconds { get; set; } = 10;

        // Theme colors
        public string ThemeAccentColor { get; set; } = "#0e639c";
        public string ThemeHeaderBg { get; set; } = "#2d2d2d";
        public string ThemeMainBg { get; set; } = "#1e1e1e";
        public string ThemeInputBg { get; set; } = "#252526";
        public string ThemeTextColor { get; set; } = "#E0E0E0";
        public string ThemeMutedText { get; set; } = "#999999";

        private static readonly string FilePath = Path.Combine(
            AppDomain.CurrentDomain.BaseDirectory, "settings.json");

        public static AppSettings Load()
        {
            try
            {
                if (File.Exists(FilePath))
                    return JsonSerializer.Deserialize<AppSettings>(File.ReadAllText(FilePath)) ?? new AppSettings();
            }
            catch { }
            return new AppSettings();
        }

        public void Save()
        {
            try
            {
                File.WriteAllText(FilePath, JsonSerializer.Serialize(this, new JsonSerializerOptions { WriteIndented = true }));
            }
            catch { }
        }
    }
}
