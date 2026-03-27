using System;
using System.IO;
using System.Text.Json;

namespace MultiTerminalManagement.Models
{
    public class AppSettings
    {
        public int GridColumns { get; set; } = 2;
        public int GridRows { get; set; } = 2;
        public int FontSize { get; set; } = 14;

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
