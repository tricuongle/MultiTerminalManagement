using System;
using System.Security.Cryptography;
using System.Text;

namespace MultiTerminalManagement.Helpers
{
    /// <summary>
    /// Encrypts/decrypts strings using Windows DPAPI tied to the current user.
    /// Only the same Windows user can decrypt the value, even if the file is copied.
    /// </summary>
    public static class PasswordProtector
    {
        public static string Protect(string plain)
        {
            if (string.IsNullOrEmpty(plain)) return null;
            try
            {
                var bytes = Encoding.UTF8.GetBytes(plain);
                var encrypted = ProtectedData.Protect(bytes, null, DataProtectionScope.CurrentUser);
                return Convert.ToBase64String(encrypted);
            }
            catch
            {
                return null;
            }
        }

        public static string Unprotect(string protectedB64)
        {
            if (string.IsNullOrEmpty(protectedB64)) return null;
            try
            {
                var encrypted = Convert.FromBase64String(protectedB64);
                var bytes = ProtectedData.Unprotect(encrypted, null, DataProtectionScope.CurrentUser);
                return Encoding.UTF8.GetString(bytes);
            }
            catch
            {
                return null;
            }
        }
    }
}
