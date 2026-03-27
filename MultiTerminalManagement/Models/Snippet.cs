using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;

namespace MultiTerminalManagement.Models
{
    public class Snippet
    {
        public string Name { get; set; } = "New Snippet";
        public string Command { get; set; } = "";
        public string Category { get; set; } = "General";
    }

    public static class SnippetStore
    {
        private static readonly string FilePath = Path.Combine(
            AppDomain.CurrentDomain.BaseDirectory, "snippets.json");

        public static List<Snippet> Load()
        {
            try
            {
                if (File.Exists(FilePath))
                    return JsonSerializer.Deserialize<List<Snippet>>(File.ReadAllText(FilePath))
                           ?? new List<Snippet>();
            }
            catch { }
            return new List<Snippet>();
        }

        public static void Save(List<Snippet> snippets)
        {
            try
            {
                File.WriteAllText(FilePath, JsonSerializer.Serialize(snippets,
                    new JsonSerializerOptions { WriteIndented = true }));
            }
            catch { }
        }
    }
}
