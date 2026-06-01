# 07 — File Structure

## 🎯 Learning Objectives
- Understand the structure of a Dart project
- Know the purpose of each file and folder
- Create and organize a Dart project correctly

---

## 📖 Explanation

When you create a Dart project using `dart create project_name`, Dart generates a **standard file structure** for you. Understanding this structure helps you organize your code professionally.

---

## 🗂️ Dart Project Structure

```
my_project/
├── bin/
│   └── my_project.dart    ← Entry point (contains main())
├── lib/
│   └── my_project.dart    ← Library code (reusable functions/classes)
├── test/
│   └── my_project_test.dart ← Tests for your code
├── .dart_tool/            ← Auto-generated (don't touch)
├── .gitignore             ← Files Git should ignore
├── analysis_options.yaml  ← Dart analyzer settings
├── CHANGELOG.md           ← Version history
├── pubspec.yaml           ← Project config & dependencies ⭐ Important!
└── README.md              ← Project description
```

---

## 📄 Key Files Explained

### `pubspec.yaml` ⭐ Most Important
This is the **configuration file** for your project. It's like an ID card for your app.

```yaml
name: my_project
description: A sample Dart project.
version: 1.0.0

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  # Add external packages here
  http: ^1.0.0

dev_dependencies:
  # Packages only used during development
  lints: ^3.0.0
```

### `bin/main.dart`
This is where your **`main()` function** lives — the entry point of your application.

```dart
// bin/main.dart
import 'package:my_project/my_project.dart' as my_project;

void main() {
  print(my_project.calculate());
}
```

### `lib/my_project.dart`
This is where you put **reusable code** — functions, classes, etc.

```dart
// lib/my_project.dart
int calculate() {
  return 6 * 7;
}
```

### `test/` folder
Contains **unit tests** to verify your code works correctly.

---

## 🏗️ Simple Single-File Structure

For learning, you often use just **one file**:

```
lesson/
└── main.dart    ← Everything in one file
```

```dart
// main.dart
void main() {
  print("Hello from a simple Dart file!");
}
```

Run it with: `dart main.dart` or `dart run main.dart`

---

## 📦 The `pubspec.yaml` in Detail

```yaml
name: my_app           # Project name (no spaces)
description: My app    # Short description
version: 1.0.0         # Version number

environment:
  sdk: '>=3.0.0 <4.0.0' # Required Dart SDK version

dependencies:
  # These are packages your app NEEDS to run
  
dev_dependencies:
  # These are only needed for development/testing
```

---

## 🚀 Creating a New Project

```bash
# Create a console app
dart create my_app

# Navigate into the project
cd my_app

# Run the project
dart run
```

---

## ➡️ Next Lesson
[08 — Variables Part 1](../08_variables_part1/)
