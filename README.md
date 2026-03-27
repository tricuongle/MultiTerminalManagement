# Multi Terminal Manager

**Trình quản lý đa terminal cho Windows** | **Multi-terminal manager for Windows**

A powerful WPF-based terminal manager that lets you run multiple CMD and PowerShell terminals simultaneously in tabs or a customizable grid layout.

## Key Feature: Vietnamese Input Support (Hỗ trợ gõ tiếng Việt)

Multi Terminal Manager fully supports **Vietnamese input (gõ tiếng Việt)** with popular input methods like Telex, VNI, and VIQR. Unlike many terminal emulators that struggle with diacritical marks and combining characters, this application handles Vietnamese text input natively through its dedicated input bar, ensuring accurate character composition every time.

> Ứng dụng hỗ trợ đầy đủ việc gõ tiếng Việt với các bộ gõ phổ biến (Telex, VNI, VIQR). Bạn có thể nhập tiếng Việt trực tiếp trong thanh nhập lệnh mà không gặp lỗi dấu hay mất ký tự.

## Features

### Core
- **Multi-terminal tabs** — Run multiple CMD/PowerShell sessions side by side
- **Grid layout** — Arrange terminals in customizable NxM grid with zoom support
- **Quick switcher** — `Ctrl+P` to quickly switch between terminals
- **Drag & drop** — Drop files/folders directly into the input bar
- **Tab management** — Rename, reorder, close terminals with context menu
- **Saved paths** — Bookmark frequently used directories with aliases

### Profile System
- **Terminal profiles** — Save reusable terminal configurations (type, directory, startup command, color)
- **Quick-create** — Launch terminals from profiles via toolbar dropdown
- **Profile manager** — Full CRUD dialog for managing profiles

### Broadcast Input
- **Broadcast mode** — Send the same command to multiple terminals simultaneously
- **Per-terminal toggle** — Choose which terminals receive broadcast input
- **Visual indicators** — Orange banner and checkbox when broadcast is active

### Command Snippets
- **Snippet library** — Save frequently used commands with categories
- **Quick picker** — `Ctrl+Shift+S` to search and insert snippets
- **Placeholders** — Use `{{variable}}` syntax for dynamic values

### Session Save/Restore
- **Save workspace** — Capture all open terminals, layout, and settings
- **Restore sessions** — Reload saved workspaces with one click
- **Auto-restore** — Optionally restore last session on startup

### Command Completion Notification
- **Background alerts** — Get notified when long-running commands finish
- **Configurable threshold** — Set minimum duration for notifications
- **Tab indicator** — Green dot appears on tabs with completed commands

### Search in Terminal Output
- **`Ctrl+F` search** — Search through terminal output text
- **Match navigation** — Navigate matches with F3/Shift+F3
- **Match counter** — See current match position and total count

## Tech Stack

- **.NET 8** (Windows Desktop)
- **WPF** (Windows Presentation Foundation)
- **ConPTY** (Windows Pseudo Console) via [EasyWindowsTerminalControl](https://www.nuget.org/packages/EasyWindowsTerminalControl)
- **System.Text.Json** for settings/data persistence

## Build & Run

### Prerequisites
- .NET 8 SDK
- Windows 10/11 (x64)
- Visual Studio 2022 or later (recommended)

### Build
```bash
cd MultiTerminalManagement
dotnet build
```

### Run
```bash
dotnet run --project MultiTerminalManagement
```

Or open `MultiTerminalManagement.slnx` in Visual Studio and press F5.

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl+P` | Quick switcher |
| `Ctrl+Tab` | Next terminal |
| `Ctrl+Shift+Tab` | Previous terminal |
| `Ctrl+1-9` | Jump to terminal by number |
| `Ctrl+F` | Search in terminal output |
| `Ctrl+Shift+S` | Open snippet picker |
| `Ctrl+C` | Interrupt (when input is empty) |
| `Ctrl+L` | Clear terminal |
| `Enter` | Send command |
| `Shift+Enter` | New line in input |
| `Up/Down` | Command history |
| `F3` | Next search match |
| `Shift+F3` | Previous search match |

## Project Structure

```
MultiTerminalManagement/
├── Models/
│   ├── AppSettings.cs          # Application settings persistence
│   ├── TerminalType.cs         # Terminal type enum (CMD/PowerShell)
│   ├── PathStore.cs            # Saved paths management
│   ├── TerminalProfile.cs      # Profile model & store
│   ├── Snippet.cs              # Snippet model & store
│   └── Session.cs              # Session model & store
├── ViewModels/
│   ├── ViewModelBase.cs        # MVVM base class
│   ├── RelayCommand.cs         # ICommand implementation
│   ├── MainViewModel.cs        # Main application logic
│   └── TerminalViewModel.cs    # Per-terminal state
├── Views/
│   ├── TerminalControl.xaml    # Terminal user control
│   ├── CreateTerminalDialog.xaml
│   ├── QuickSwitcherPopup.xaml
│   ├── ProfileManagerDialog.xaml
│   ├── SnippetManagerDialog.xaml
│   ├── SnippetPickerPopup.xaml
│   ├── PlaceholderInputDialog.xaml
│   ├── SessionManagerDialog.xaml
│   └── TerminalSearchBar.xaml
├── Services/
│   ├── CommandCompletionMonitor.cs
│   └── ToastNotificationService.cs
├── Helpers/
│   └── AnsiHelper.cs
├── MainWindow.xaml
└── App.xaml
```

## Screenshots

<!-- Add screenshots here -->

## License

This project is provided as-is for personal and educational use.
