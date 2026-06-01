# 11 — Data Types Overview

## 🎯 Learning Objectives
- Understand what data types are and why they matter
- Know all built-in Dart data types
- Choose the right data type for each situation

---

## 📖 What are Data Types?

A **data type** tells Dart what kind of data a variable holds. It determines:
- How much **memory** to reserve
- What **operations** are allowed
- What **values** are valid

---

## 🗂️ Dart Built-in Data Types

```
Dart Data Types
│
├── Numbers
│   ├── int       (whole numbers: 1, -5, 100)
│   ├── double    (decimals: 3.14, -0.5)
│   └── num       (either int or double)
│
├── Text
│   └── String    ("Hello", 'World')
│
├── Boolean
│   └── bool      (true, false)
│
├── Special
│   ├── dynamic   (any type, decided at runtime)
│   ├── var       (type inferred by compiler)
│   └── Object    (base type of everything)
│
└── Collections
    ├── List      ([1, 2, 3])
    ├── Set       ({1, 2, 3})
    └── Map       ({"key": "value"})
```

---

## 📝 Quick Reference

```dart
void main() {
  // Text
  String name = "Ahmed";

  // Whole numbers
  int age = 17;
  int year = 2024;

  // Decimal numbers
  double height = 1.75;
  double gpa = 3.8;

  // Either int or double
  num score = 95;
  num average = 88.5;

  // True or False
  bool isStudent = true;
  bool hasGraduated = false;

  // Collections
  List<String> subjects = ["Math", "Science", "Dart"];
  Set<int> grades = {90, 85, 92};
  Map<String, int> scores = {"Math": 90, "Science": 85};

  // Flexible
  dynamic anything = "I can be anything";
  anything = 42;
  anything = true;
}
```

---

## 🔍 Type Checking

Check the type of a variable at runtime:
```dart
void main() {
  int age = 17;
  String name = "Sara";

  print(age.runtimeType);   // Output: int
  print(name.runtimeType);  // Output: String

  // Check if a variable is a specific type:
  print(age is int);        // true
  print(age is String);     // false
}
```

---

## 🆚 Statically vs Dynamically Typed

Dart is **statically typed** — the type is known at compile time:
```dart
int x = 5;
x = "hello";  // ❌ ERROR: Can't put a String in an int variable
```

But `dynamic` and `var` give flexibility:
```dart
dynamic x = 5;
x = "hello";  // ✅ Allowed with dynamic
```

---

## ➡️ Next Lesson
[12 — String Data Type](../12_string_data_type/)
