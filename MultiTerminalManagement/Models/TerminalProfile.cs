using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;

namespace MultiTerminalManagement.Models
{
    public class TerminalProfile
    {
        public string Name { get; set; } = "New Profile";
        public TerminalType TerminalType { get; set; } = TerminalType.Cmd;
        public string DefaultWorkingDirectory { get; set; }
        public string StartupCommand { get; set; }
        public string IconColor { get; set; } = "#0e639c";
    }

    public static class TerminalProfileStore
    {
        private static readonly string FilePath = Path.Combine(
            AppDomain.CurrentDomain.BaseDirectory, "profiles.json");

        public static List<TerminalProfile> Load()
        {
            try
            {
                if (File.Exists(FilePath))
                    return JsonSerializer.Deserialize<List<TerminalProfile>>(File.ReadAllText(FilePath))
                           ?? new List<TerminalProfile>();
            }
            catch { }
            return new List<TerminalProfile>();
        }

        public static void Save(List<TerminalProfile> profiles)
        {
            try
            {
                File.WriteAllText(FilePath, JsonSerializer.Serialize(profiles,
                    new JsonSerializerOptions { WriteIndented = true }));
            }
            catch { }
        }
    }
}
