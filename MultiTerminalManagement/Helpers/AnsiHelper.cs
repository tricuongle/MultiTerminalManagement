using System.Text.RegularExpressions;

namespace MultiTerminalManagement.Helpers
{
    public static class AnsiHelper
    {
        private static readonly Regex AnsiPattern = new Regex(
            @"\x1B(?:[@-Z\\-_]|\[[0-?]*[ -/]*[@-~]|\][^\x07]*\x07)",
            RegexOptions.Compiled);

        public static string StripAnsiCodes(string text)
        {
            if (string.IsNullOrEmpty(text)) return text;
            return AnsiPattern.Replace(text, "");
        }
    }
}
