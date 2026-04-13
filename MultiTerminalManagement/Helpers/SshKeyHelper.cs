using System;
using System.Diagnostics;
using System.IO;

namespace MultiTerminalManagement.Helpers
{
    /// <summary>
    /// Helpers for generating an SSH key pair using the system ssh-keygen.
    /// </summary>
    public static class SshKeyHelper
    {
        public static string SshDir => Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.UserProfile), ".ssh");

        public static string DefaultPrivateKeyPath => Path.Combine(SshDir, "id_ed25519");
        public static string DefaultPublicKeyPath => DefaultPrivateKeyPath + ".pub";

        /// <summary>
        /// Returns true if a default SSH key already exists.
        /// </summary>
        public static bool DefaultKeyExists() => File.Exists(DefaultPrivateKeyPath);

        /// <summary>
        /// Generates a new ed25519 key pair with no passphrase at the default location.
        /// Returns true on success.
        /// </summary>
        public static bool GenerateDefaultKey(out string error)
        {
            error = null;
            try
            {
                if (!Directory.Exists(SshDir))
                    Directory.CreateDirectory(SshDir);

                if (DefaultKeyExists())
                    return true;

                var psi = new ProcessStartInfo
                {
                    FileName = "ssh-keygen.exe",
                    Arguments = $"-t ed25519 -f \"{DefaultPrivateKeyPath}\" -N \"\" -q",
                    UseShellExecute = false,
                    CreateNoWindow = true,
                    RedirectStandardError = true,
                    RedirectStandardOutput = true
                };
                using var p = Process.Start(psi);
                p.WaitForExit(15000);
                if (p.ExitCode != 0)
                {
                    error = p.StandardError.ReadToEnd();
                    return false;
                }
                return File.Exists(DefaultPrivateKeyPath);
            }
            catch (Exception ex)
            {
                error = ex.Message;
                return false;
            }
        }

        public static string ReadPublicKey()
        {
            try
            {
                if (File.Exists(DefaultPublicKeyPath))
                    return File.ReadAllText(DefaultPublicKeyPath).Trim();
            }
            catch { }
            return null;
        }
    }
}
