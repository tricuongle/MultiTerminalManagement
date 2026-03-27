using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace MultiTerminalManagement.Models
{
    /// <summary>
    /// Represents a saved path with an alias name.
    /// </summary>
    public class SavedPath
    {
        public string Name { get; set; }
        public string Path { get; set; }

        public SavedPath(string name, string path)
        {
            Name = name;
            Path = path;
        }
    }

    public static class PathStore
    {
        private static readonly string FilePath = System.IO.Path.Combine(
            AppDomain.CurrentDomain.BaseDirectory, "saved_paths.txt");

        /// <summary>
        /// Load saved paths. Format per line: "name|path" or legacy "path" (folder name used as alias).
        /// </summary>
        public static List<SavedPath> Load()
        {
            if (!File.Exists(FilePath))
                return new List<SavedPath>();

            return File.ReadAllLines(FilePath)
                .Where(l => !string.IsNullOrWhiteSpace(l))
                .Select(line =>
                {
                    var parts = line.Split('|');
                    if (parts.Length >= 2)
                        return new SavedPath(parts[0].Trim(), parts[1].Trim());
                    // Legacy: just a path, use folder name as alias
                    var path = line.Trim();
                    var folderName = System.IO.Path.GetFileName(path.TrimEnd('\\', '/'));
                    return new SavedPath(
                        string.IsNullOrEmpty(folderName) ? "Terminal" : folderName,
                        path);
                })
                .GroupBy(sp => sp.Path, StringComparer.OrdinalIgnoreCase)
                .Select(g => g.First())
                .ToList();
        }

        public static void Save(IEnumerable<SavedPath> paths)
        {
            var lines = paths
                .Where(sp => !string.IsNullOrWhiteSpace(sp.Path))
                .GroupBy(sp => sp.Path, StringComparer.OrdinalIgnoreCase)
                .Select(g => g.First())
                .Select(sp => $"{sp.Name}|{sp.Path}");
            File.WriteAllLines(FilePath, lines);
        }

        public static void Add(string name, string path)
        {
            var paths = Load();
            if (!paths.Any(sp => string.Equals(sp.Path, path, StringComparison.OrdinalIgnoreCase)))
            {
                paths.Add(new SavedPath(name, path));
                Save(paths);
            }
        }

        public static void Remove(string path)
        {
            var paths = Load();
            paths.RemoveAll(sp => string.Equals(sp.Path, path, StringComparison.OrdinalIgnoreCase));
            Save(paths);
        }
    }
}
