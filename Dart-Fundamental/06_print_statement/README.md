# 06 — Print Statement

## 🎯 Learning Objectives
- Use `print()` to display output
- Understand the difference between `print()` and `stdout.write()`
- Print different types of values and use string interpolation

---

## 📖 Explanation

The `print()` function is the most basic way to show output in Dart. It displays a value in the terminal and automatically adds a **new line** at the end.

---

## 🔑 Basic Syntax

```dart
print("Hello, World!");
```

**Output:**
```
Hello, World!
```

---

## 📝 What Can You Print?

### Strings (text)
```dart
print("Hello, Dart!");       // using double quotes
print('Hello, Flutter!');    // using single quotes
```

### Numbers
```dart
print(42);       // integer
print(3.14);     // decimal
```

### Boolean
```dart
print(true);
print(false);
```

### Variables
```dart
String name = "Sara";
int age = 17;
print(name);   // Output: Sara
print(age);    // Output: 17
```

---

## 🔗 String Interpolation

String interpolation lets you **embed variables inside a string** using `$`:

```dart
String name = "Ahmed";
int age = 16;

print("My name is $name and I am $age years old.");
// Output: My name is Ahmed and I am 16 years old.
```

For expressions, use `${}`:
```dart
int x = 5;
print("5 + 3 = ${x + 3}");
// Output: 5 + 3 = 8
```

---

## 📏 Multiple Lines

Each `print()` adds a new line automatically:
```dart
print("Line 1");
print("Line 2");
print("Line 3");
```
**Output:**
```
Line 1
Line 2
Line 3
```

For text with line breaks inside:
```dart
print("Line 1\nLine 2\nLine 3");
```

---

## 🆚 print() vs stdout.write()

| Feature | `print()` | `stdout.write()` |
|---------|-----------|-----------------|
| Adds new line | ✅ Yes | ❌ No |
| Usage | Most common | Special cases |
| Import needed | ❌ No | ✅ Yes (`dart:io`) |

```dart
import 'dart:io';

void main() {
  stdout.write("No ");
  stdout.write("new ");
  stdout.write("line!");
  // Output: No new line!
}
```

---

## 🎨 Special Characters in Strings

| Character | Meaning |
|-----------|---------|
| `\n` | New line |
| `\t` | Tab space |
| `\\` | Backslash |
| `\"` | Double quote inside string |

```dart
print("Name:\tAhmed\nAge:\t16");
// Output:
// Name:  Ahmed
// Age:   16
```

---

## ➡️ Next Lesson
[07 — File Structure](../07_file_structure/)
