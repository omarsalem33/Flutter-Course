# 03 — Introduction to VS Code

## 🎯 Learning Objectives
- Navigate the VS Code interface
- Understand key VS Code features for Dart development
- Use essential keyboard shortcuts

---

## 📖 What is VS Code?

**Visual Studio Code (VS Code)** is a free, lightweight, and powerful code editor made by Microsoft. It is the most popular editor for Dart and Flutter development.

**Why VS Code?**
- ✅ Free and open source
- ✅ Fast and lightweight
- ✅ Huge extension marketplace
- ✅ Excellent Dart/Flutter support
- ✅ Built-in terminal
- ✅ Git integration

---

## 🖥️ VS Code Interface

```
┌──────────────────────────────────────────────┐
│  Menu Bar (File, Edit, View, Terminal...)     │
├────┬─────────────────────────────────────────┤
│    │                                          │
│ A  │          Editor Area                    │
│ C  │     (where you write code)              │
│ T  │                                          │
│ I  ├─────────────────────────────────────────┤
│ V  │          Terminal Panel                 │
│ I  │     (run your Dart programs here)       │
│ T  │                                          │
│ Y  │                                          │
│    │                                          │
│ B  │                                          │
│ A  │                                          │
│ R  │                                          │
└────┴─────────────────────────────────────────┘
```

### Main Areas:
1. **Activity Bar** (left side icons) — Switch between Explorer, Search, Git, Extensions
2. **Explorer Panel** — See your project files and folders
3. **Editor Area** — Write and edit your code
4. **Terminal Panel** — Run commands without leaving VS Code
5. **Status Bar** (bottom) — Shows current file info, errors, Dart SDK version

---

## ⌨️ Essential Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Ctrl + \`` | Open/close terminal |
| `Ctrl + S` | Save file |
| `Ctrl + Z` | Undo |
| `Ctrl + Shift + P` | Command Palette (most important!) |
| `Ctrl + P` | Quick open file |
| `Ctrl + /` | Toggle comment |
| `Ctrl + D` | Select next occurrence |
| `Alt + Up/Down` | Move line up/down |
| `F5` | Run with debugger |

> 💡 **macOS users:** Replace `Ctrl` with `Cmd`

---

## 🎨 Useful Settings for Dart

Open Settings: `Ctrl + ,`

Recommended settings:
```json
{
  "editor.formatOnSave": true,
  "editor.fontSize": 14,
  "editor.tabSize": 2,
  "editor.wordWrap": "on"
}
```

---

## 🔍 Command Palette

Press `Ctrl + Shift + P` to open the Command Palette.
This is the most powerful feature in VS Code — you can do almost anything from here!

Try typing:
- `Dart: New Project` — Create a new Dart project
- `Format Document` — Format your code
- `Toggle Terminal` — Show/hide the terminal

---

## ➡️ Next Lesson
[04 — Dart Extension](../04_dart_extension/)
