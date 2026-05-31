# 04 — Dart Extension

## 🎯 Learning Objectives
- Install the Dart and Flutter extensions in VS Code
- Understand what features the extension adds
- Use extension features for better productivity

---

## 📖 What is the Dart Extension?

The **Dart extension for VS Code** is an official plugin created by the Dart team. It turns VS Code from a simple text editor into a full Dart IDE (Integrated Development Environment).

---

## 🔧 How to Install

### Method 1 — Extensions Panel
1. Open VS Code
2. Click the **Extensions icon** in the Activity Bar (or press `Ctrl + Shift + X`)
3. Search for **"Dart"**
4. Find the extension by **Dart Code** (dart-code.dart-code)
5. Click **Install**

### Method 2 — Command Line
```bash
code --install-extension Dart-Code.dart-code
```

### Also Install Flutter Extension
Search for **"Flutter"** and install it as well — it depends on the Dart extension.

---

## ✨ Features Added by the Extension

### 1. Syntax Highlighting
Code becomes colorful and easier to read:
```dart
void main() {           // ← purple (keyword)
  String name = "Ali";  // ← different colors per type
  print(name);          // ← function in yellow
}
```

### 2. IntelliSense (Auto-complete)
As you type, VS Code suggests completions. Press `Tab` to accept.

### 3. Error Detection
Red underlines appear **as you type** — no need to run the code to find mistakes.

### 4. Code Formatting
Press `Ctrl + Shift + F` (or save if formatOnSave is on) — your code gets perfectly formatted automatically.

### 5. Dart DevTools
A powerful browser-based tool for debugging and profiling.

### 6. Run & Debug
Press `F5` to run your Dart program with full debugging support.

---

## 🔍 Verify the Extension is Working

Open a `.dart` file. You should see:
- ✅ Colorful syntax highlighting
- ✅ Dart SDK version in the status bar (bottom)
- ✅ Auto-completion when you type

---

## ➡️ Next Lesson
[05 — Main Function](../05_main_function/)
