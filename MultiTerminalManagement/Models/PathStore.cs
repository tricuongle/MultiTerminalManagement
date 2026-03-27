using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace MultiTerminalManagement.Models
{
    public static class PathStore
    {
        private static readonly string FilePath = Path.Combine(
            AppDomain.CurrentDomain.BaseDirectory, "saved_paths.txt");

        public static List<string> Load()
        {
            if (!File.Exists(FilePath))
                return new List<string>();

            return File.ReadAllLines(FilePath)
                .Where(l => !string.IsNullOrWhiteSpace(l))
                .Distinct()
                .ToList();
        }

        public static void Save(IEnumerable<string> paths)
        {
            File.WriteAllLines(FilePath, paths.Where(p => !string.IsNullOrWhiteSpace(p)).Distinct());
        }

        public static void Add(string path)
        {
            var paths = Load();
            if (!paths.Contains(path, StringComparer.OrdinalIgnoreCase))
            {
                paths.Add(path);
                Save(paths);
            }
        }

        public static void Remove(string path)
        {
            var paths = Load();
            paths.RemoveAll(p => string.Equals(p, path, StringComparison.OrdinalIgnoreCase));
            Save(paths);
        }
    }
}
