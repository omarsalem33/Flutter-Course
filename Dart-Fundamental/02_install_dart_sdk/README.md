# 02 — Install Dart SDK

## 🎯 Learning Objectives
- Download and install the Dart SDK
- Understand what the SDK contains
- Verify the installation using the terminal

---

## 📖 What is the Dart SDK?

**SDK** stands for **Software Development Kit**. The Dart SDK is a collection of tools that allow you to:
- **Write** Dart code
- **Run** Dart programs
- **Compile** Dart to native or JavaScript
- **Analyze** your code for errors

### SDK Contents

```
dart-sdk/
├── bin/          ← Command-line tools (dart, dartfmt, etc.)
├── lib/          ← Core Dart libraries
├── include/      ← C headers (for native extensions)
└── version       ← SDK version file
```

---

## 🔧 Installation by Platform

### 🪟 Windows
1. Download the Dart SDK installer from https://dart.dev/get-dart
2. Run the `.exe` installer
3. The installer automatically adds Dart to your **PATH**
4. Restart your terminal

### 🍎 macOS
Using Homebrew (recommended):
```bash
brew tap dart-lang/dart
brew install dart
```

### 🐧 Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install apt-transport-https
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list
sudo apt-get update
sudo apt-get install dart
```

---

## ✅ Verify Installation

Open your terminal and run:

```bash
dart --version
```

Expected output:
```
Dart SDK version: 3.2.0 (stable) on "windows_x64"
```

Also try:
```bash
dart help
```

This shows all available Dart commands.

---

## 🔑 Key Dart Commands

| Command | What it does |
|---------|-------------|
| `dart run file.dart` | Run a Dart file |
| `dart create project_name` | Create a new Dart project |
| `dart analyze` | Check code for errors |
| `dart format file.dart` | Auto-format your code |
| `dart compile` | Compile to native or JS |

---

## 💡 Important: PATH Variable

The **PATH** is a system variable that tells your computer where to find programs.
When Dart is in your PATH, you can run `dart` from anywhere in the terminal.

If `dart` is not recognized after installation, you may need to add it to PATH manually.

---

## ➡️ Next Lesson
[03 — Introduction to VS Code](../03_intro_to_vscode/)
