# 18 — Var

## 🎯 Learning Objectives
- Use `var` for type inference
- Understand the difference between `var` and `dynamic`
- Know when to use `var`

---

## 📖 What is var?

`var` tells Dart: "Figure out the type yourself based on what I assign." The type is **inferred** at compile time and **cannot change**.

```dart
var name = "Ahmed";      // Dart infers: String
var age = 17;            // Dart infers: int
var gpa = 3.85;          // Dart infers: double
var passed = true;       // Dart infers: bool
```

---

## 🔒 var is Still Statically Typed

Once inferred, the type is **locked**:
```dart
var name = "Ahmed";
name = "Sara";   // ✅ Fine — still a String
name = 42;       // ❌ ERROR — Cannot assign int to String
```

This is different from `dynamic`, which allows type changes.

---

## 🆚 var vs dynamic vs explicit type

```dart
// Explicit type — most readable, recommended for class fields
String name = "Ahmed";

// var — great for local variables, type is inferred
var score = 95;

// dynamic — avoid unless necessary, no type safety
dynamic anything = "changes type";
anything = 42;  // allowed but risky
```

---

## ✅ When to Use var

- For **local variables** where the type is obvious from the value
- When the type is long and repetitive (generics)
- In `for` loops

```dart
// Instead of this:
Map<String, List<int>> scores = {"Math": [90, 85, 92]};

// You can write:
var scores = {"Math": [90, 85, 92]};  // Same type, less typing
```

---

## ➡️ Next Lesson
[19 — Arithmetic Operators](../19_arithmetic_operators/)
