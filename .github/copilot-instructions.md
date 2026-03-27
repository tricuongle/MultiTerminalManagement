# Copilot Instructions

## Project Guidelines
- For the MultiTerminalManagement project: When sending keyboard input to the terminal HWND, use PostMessage (not SendMessage) so messages go through the message queue like real keyboard input. For Enter key, only send WM_KEYDOWN + WM_KEYUP (no WM_CHAR) because TranslateMessage auto-generates WM_CHAR. Add small delays (15ms after focus/text, 50ms after Enter) to let programs inside the terminal process input properly. SetFocus the terminal HWND before sending, then return focus to InputBox after.