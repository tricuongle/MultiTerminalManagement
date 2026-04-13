using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;

namespace MultiTerminalManagement.Models
{
    public class TerminalConfig
    {
        public string Name { get; set; }
        public TerminalType TerminalType { get; set; }
        public string WorkingDirectory { get; set; }
        public string StartupCommand { get; set; }

        // SSH
        public string SshHost { get; set; }
        public int SshPort { get; set; } = 22;
        public string SshUser { get; set; }
        public string SshKeyPath { get; set; }
        public string SshPasswordEncrypted { get; set; }
    }

    public class Session
    {
        public string Name { get; set; }
        public DateTime Date { get; set; }
        public List<TerminalConfig> Terminals { get; set; } = new List<TerminalConfig>();
        public int GridRows { get; set; } = 2;
        public int GridColumns { get; set; } = 2;
        public bool IsGridMode { get; set; }
        public bool IsAutoGrid { get; set; } = true;
        public string LayoutPreset { get; set; } = "EvenGrid";
        public int FontSize { get; set; } = 12;
    }

    public static class SessionStore
    {
        private static readonly string FilePath = Path.Combine(
            AppDomain.CurrentDomain.BaseDirectory, "sessions.json");
        private static readonly string LastSessionPath = Path.Combine(
            AppDomain.CurrentDomain.BaseDirectory, "last_session.json");

        private static readonly JsonSerializerOptions Options = new() { WriteIndented = true };

        public static List<Session> Load()
        {
            try
            {
                if (File.Exists(FilePath))
                    return JsonSerializer.Deserialize<List<Session>>(File.ReadAllText(FilePath)) ?? new List<Session>();
            }
            catch { }
            return new List<Session>();
        }

        public static void Save(List<Session> sessions)
        {
            try { File.WriteAllText(FilePath, JsonSerializer.Serialize(sessions, Options)); }
            catch { }
        }

        public static Session LoadLastSession()
        {
            try
            {
                if (File.Exists(LastSessionPath))
                    return JsonSerializer.Deserialize<Session>(File.ReadAllText(LastSessionPath));
            }
            catch { }
            return null;
        }

        public static void SaveLastSession(Session session)
        {
            try { File.WriteAllText(LastSessionPath, JsonSerializer.Serialize(session, Options)); }
            catch { }
        }
    }
}
