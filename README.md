# Multi Terminal Manager

**Trình quản lý đa terminal cho Windows** | **Multi-terminal manager for Windows**

A powerful WPF-based terminal manager that lets you run multiple CMD and PowerShell terminals simultaneously in tabs or a customizable grid layout.

## Key Feature: Vietnamese Input Support (Hỗ trợ gõ tiếng Việt)

Multi Terminal Manager fully supports **Vietnamese input (gõ tiếng Việt)** with popular input methods like Telex, VNI, and VIQR. Unlike many terminal emulators that struggle with diacritical marks and combining characters, this application handles Vietnamese text input natively through its dedicated input bar, ensuring accurate character composition every time.

> Ứng dụng hỗ trợ đầy đủ việc gõ tiếng Việt với các bộ gõ phổ biến (Telex, VNI, VIQR). Bạn có thể nhập tiếng Việt trực tiếp trong thanh nhập lệnh mà không gặp lỗi dấu hay mất ký tự.

## Features

### Core
- **Multi-terminal tabs** — Run multiple CMD/PowerShell sessions side by side
- **Grid layout** — Arrange terminals in customizable grid (1-5 columns x 1-5 rows)
- **Terminal zoom** — Double-click header or zoom button to focus a single terminal in grid mode
- **Quick switcher** — `Ctrl+P` to quickly search and switch between terminals
- **Drag & drop** — Drop files/folders directly into the input bar (auto-quoted paths with spaces)
- **Tab management** — Rename (double-click), reorder (Move Left/Right), close terminals via context menu
- **Multi-line input** — `Shift+Enter` for multi-line commands, auto-expanding input box
- **Command history** — `Up/Down` arrow keys to navigate command history
- **Terminal accent colors** — Each terminal gets a unique color from an 8-color palette for easy identification

---

### Profile System

Tạo và quản lý các cấu hình terminal để khởi tạo nhanh. | Create and manage terminal presets for quick launch.

**Cách sử dụng | Usage:**

1. **Tạo profile mới:** Vào **Tools > Profiles > Manage Profiles...** để mở Profile Manager.
   - Điền tên, chọn loại terminal (CMD/PowerShell), thư mục mặc định, lệnh khởi động, và màu icon.
   - Nhấn **Save Profile** để lưu.

2. **Dùng profile khi tạo terminal:** Nhấn nút **"+"** để mở dialog tạo terminal mới. Chọn profile từ dropdown **"Profile"** ở đầu dialog — các trường Name, Type, Directory sẽ tự động được điền.

3. **Khởi tạo nhanh từ menu:** Vào **Tools > Profiles** — chọn profile từ danh sách để tạo terminal ngay lập tức với cấu hình đã lưu. Tên terminal tự động tăng số (ví dụ: "Server 01", "Server 02").

---

### Broadcast Input

Gửi cùng một lệnh đến nhiều terminal cùng lúc. | Send the same command to multiple terminals at once.

**Cách sử dụng | Usage:**

1. **Mở Broadcast:** Vào **Tools > Broadcast** để mở cửa sổ Broadcast riêng biệt.

2. **Chọn terminal nhận lệnh:** Trong cửa sổ Broadcast, tick chọn các terminal muốn nhận lệnh. Dùng nút **"Check All"** / **"Uncheck All"** để chọn/bỏ chọn nhanh.

3. **Gửi lệnh:** Nhập lệnh vào ô nhập trong cửa sổ Broadcast và nhấn **Enter** hoặc nút **Send**. Lệnh sẽ được gửi đến tất cả terminal đã chọn.

> **Lưu ý:** Rất hữu ích khi bạn cần chạy cùng lệnh trên nhiều server/project cùng lúc (ví dụ: `git pull`, `npm install`).

---

### Command Snippets

Lưu và sử dụng nhanh các lệnh hay dùng. | Save and quickly reuse frequently used commands.

**Cách sử dụng | Usage:**

1. **Quản lý snippet:** Vào **Tools > Snippets** để mở Snippet Manager.
   - Nhấn **"+ Add"** để tạo snippet mới.
   - Điền tên, danh mục (category), và nội dung lệnh.
   - Dùng cú pháp `{{tên_biến}}` cho các giá trị thay đổi (placeholder). Ví dụ: `docker exec -it {{container_name}} bash`
   - Nhấn **Save Snippet** để lưu.

2. **Chèn snippet vào terminal:** Nhấn `Ctrl+Shift+S` hoặc nhấn nút **"{}"** cạnh nút Send trong mỗi terminal.
   - Cửa sổ picker sẽ mở ra — gõ để tìm kiếm snippet theo tên, danh mục, hoặc nội dung.
   - Nhấn **Enter** hoặc double-click để chọn snippet.
   - Nếu snippet có placeholder `{{...}}`, một dialog sẽ hiện ra để bạn điền giá trị.
   - Lệnh đã được điền sẽ xuất hiện trong ô nhập lệnh, sẵn sàng gửi.

---

### Session Save/Restore

Lưu và khôi phục toàn bộ workspace. | Save and restore your entire workspace.

**Cách sử dụng | Usage:**

1. **Lưu session:** Vào **Tools > Sessions** để mở Session Manager.
   - Nhập tên session vào ô text ở trên cùng.
   - Nhấn **"Save Current"** — toàn bộ trạng thái hiện tại sẽ được lưu (danh sách terminal, layout grid, font size).

2. **Khôi phục session:** Trong cửa sổ Session Manager, chọn session từ danh sách và nhấn **"Load Selected"**.
   - Tất cả terminal hiện tại sẽ được đóng và thay thế bằng các terminal từ session đã lưu.

3. **Xoá session:** Chọn session và nhấn **"Delete Selected"**.

4. **Tự động khôi phục:** Tick checkbox **"Auto-restore last session on startup"** — mỗi khi mở ứng dụng, session cuối cùng sẽ tự động được khôi phục.

> **Lưu ý:** Session cuối cùng luôn được tự động lưu khi đóng ứng dụng (file `last_session.json`).

---

### Theme Customization

Tuỳ chỉnh màu sắc giao diện theo ý thích. | Customize the application's color scheme.

**Cách sử dụng | Usage:**

1. **Mở cài đặt theme:** Vào **Tools > Theme Settings...** để mở dialog tuỳ chỉnh.

2. **Tuỳ chỉnh màu sắc:** Thay đổi mã màu HEX cho từng thành phần:
   - **Accent Color** — Màu nhấn chính (nút bấm, viền focus)
   - **Header Background** — Nền thanh header
   - **Main Background** — Nền chính của ứng dụng
   - **Input Background** — Nền ô nhập lệnh
   - **Text Color** — Màu chữ chính
   - **Muted Text** — Màu chữ phụ

3. **Dùng preset có sẵn:** Chọn nhanh từ 4 preset:
   - **Dark (Default)** — Giao diện tối mặc định
   - **Darker** — Tối hơn nữa
   - **Blue Accent** — Tông xanh dương
   - **Green Accent** — Tông xanh lá

4. Nhấn **Apply** để áp dụng thay đổi ngay lập tức.

---

### Command Completion Notification

Nhận thông báo khi lệnh chạy lâu hoàn thành. | Get notified when long-running commands finish.

**Cách sử dụng | Usage:**

1. **Tự động hoạt động:** Tính năng này hoạt động tự động. Khi bạn chạy một lệnh trong terminal và chuyển sang tab khác, hệ thống sẽ theo dõi output.

2. **Thông báo Windows:** Khi lệnh hoàn thành (thời gian chạy vượt ngưỡng mặc định **10 giây**) và terminal đó không được focus, một thông báo balloon (toast) của Windows sẽ hiện ra.

3. **Chỉ báo trên tab:** Một chấm tròn **màu xanh lá** sẽ xuất hiện bên cạnh tab của terminal đã hoàn thành lệnh. Chấm này sẽ tự mất khi bạn chuyển sang tab đó.

4. **Tuỳ chỉnh:** Chỉnh `NotifyOnCommandCompletion` và `NotificationThresholdSeconds` trong file `settings.json`:
   ```json
   {
     "NotifyOnCommandCompletion": true,
     "NotificationThresholdSeconds": 10
   }
   ```

---

### Search in Terminal Output

Tìm kiếm văn bản trong output của terminal. | Search through terminal output text.

**Cách sử dụng | Usage:**

1. **Mở thanh tìm kiếm:** Nhấn `Ctrl+F` khi đang ở trong terminal. Thanh tìm kiếm sẽ xuất hiện phía trên vùng terminal.

2. **Tìm kiếm:** Gõ từ khoá cần tìm. Số lượng kết quả sẽ hiển thị bên phải (ví dụ: `3/15` = kết quả thứ 3 trong tổng 15).

3. **Di chuyển giữa các kết quả:**
   - Nhấn **F3** hoặc **Enter** để đi đến kết quả tiếp theo.
   - Nhấn **Shift+F3** để quay lại kết quả trước đó.
   - Hoặc nhấn các nút mũi tên **&#x25B2;** / **&#x25BC;** trên thanh tìm kiếm.

4. **Đóng thanh tìm kiếm:** Nhấn **Escape** hoặc nhấn nút **X** trên thanh tìm kiếm.

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

## Tools Menu

| Menu Item | Description |
|-----------|-------------|
| **Profiles > Manage Profiles...** | Open Profile Manager to create/edit/delete profiles |
| **Profiles > [Profile Name]** | Quick-create terminal from saved profile |
| **Broadcast** | Open Broadcast window to send commands to multiple terminals |
| **Snippets** | Open Snippet Manager to manage command snippets |
| **Sessions** | Open Session Manager to save/restore workspace |
| **Theme Settings...** | Customize application colors and choose presets |
| **Help** | Show keyboard shortcuts and usage guide |

## Project Structure

```
MultiTerminalManagement/
├── Models/
│   ├── AppSettings.cs          # Application settings & theme persistence
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
│   ├── MainWindow.xaml         # Main application window
│   ├── TerminalControl.xaml    # Terminal user control
│   ├── TerminalSearchBar.xaml  # Search bar in terminal output
│   ├── CreateTerminalDialog.xaml
│   ├── QuickSwitcherPopup.xaml
│   ├── ProfileManagerDialog.xaml
│   ├── SnippetManagerDialog.xaml
│   ├── SnippetPickerPopup.xaml
│   ├── PlaceholderInputDialog.xaml
│   ├── SessionManagerDialog.xaml
│   ├── BroadcastWindow.xaml    # Broadcast command window
│   └── ThemeSettingsDialog.xaml # Theme customization dialog
├── Services/
│   ├── CommandCompletionMonitor.cs  # Detects command completion
│   └── ToastNotificationService.cs # Windows toast notifications
├── Helpers/
│   └── AnsiHelper.cs           # ANSI escape code stripping
└── App.xaml                    # Application entry & global theming
```

## Data Files

Các file dữ liệu được lưu trong thư mục ứng dụng:

| File | Description |
|------|-------------|
| `settings.json` | Grid layout, font size, theme colors, notification settings |
| `profiles.json` | Saved terminal profiles |
| `snippets.json` | Command snippets with categories |
| `sessions.json` | Saved session list |
| `last_session.json` | Auto-restore session data |
| `saved_paths.txt` | Bookmarked working directories |

## Screenshots

<!-- Add screenshots here -->

## License

This project is provided as-is for personal and educational use.
