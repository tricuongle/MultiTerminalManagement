using System;
using System.Text.RegularExpressions;
using System.Windows.Threading;
using MultiTerminalManagement.Helpers;

namespace MultiTerminalManagement.Services
{
    public class CommandCompletionMonitor
    {
        public enum State { Idle, Running, Finished }

        // Matches CMD prompt: "C:\path>" or PowerShell: "PS C:\path>"
        private static readonly Regex PromptPattern = new Regex(
            @"(?:^|\n)\s*(?:PS\s+)?[A-Za-z]:\\[^>\r\n]*>\s*$",
            RegexOptions.Compiled | RegexOptions.Multiline);

        private State _state = State.Idle;
        private DateTime _commandStartTime;
        private readonly DispatcherTimer _debounceTimer;
        private string _lastOutput = "";

        public event Action<TimeSpan> CommandCompleted;

        public CommandCompletionMonitor()
        {
            _debounceTimer = new DispatcherTimer
            {
                Interval = TimeSpan.FromMilliseconds(200)
            };
            _debounceTimer.Tick += DebounceTimer_Tick;
        }

        public void MarkCommandSent()
        {
            _state = State.Running;
            _commandStartTime = DateTime.Now;
            _debounceTimer.Stop();
        }

        public void ProcessOutput(string output)
        {
            if (_state != State.Running) return;

            _lastOutput = output;
            _debounceTimer.Stop();
            _debounceTimer.Start();
        }

        private void DebounceTimer_Tick(object sender, EventArgs e)
        {
            _debounceTimer.Stop();

            if (_state != State.Running) return;

            var stripped = AnsiHelper.StripAnsiCodes(_lastOutput);
            if (PromptPattern.IsMatch(stripped))
            {
                _state = State.Finished;
                var duration = DateTime.Now - _commandStartTime;
                CommandCompleted?.Invoke(duration);
                _state = State.Idle;
            }
        }
    }
}
