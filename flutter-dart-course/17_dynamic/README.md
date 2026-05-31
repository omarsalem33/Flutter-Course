# 17 — Dynamic

## 🎯 Learning Objectives
- Understand what `dynamic` does
- Know the risks of using dynamic
- Know when dynamic is appropriate

---

## 📖 What is dynamic?

`dynamic` turns off type checking for a variable — it can hold **any type** and can change type at runtime.

```dart
dynamic x = "Hello";    // String
x = 42;                 // Now int — no error!
x = true;               // Now bool — still no error!
x = [1, 2, 3];          // Now List — all fine!
```

---

## 🔧 Using dynamic

```dart
void main() {
  dynamic value = "Dart";
  print(value);          // Dart
  print(value.length);   // 4 (String method works)

  value = 100;
  print(value);          // 100
  // print(value.length); // ❌ RUNTIME ERROR! int has no .length
}
```

---

## ⚠️ Dangers of dynamic

```dart
dynamic num = "not a number";
// This compiles fine but CRASHES at runtime:
// print(num + 5);  // Error: String + int doesnt work
```

Type errors only appear at **runtime** (when running), not at compile time. This removes Dart strongest safety feature!

---

## ✅ When to Use dynamic

- Working with JSON data from an API
- When type is genuinely unknown
- When migrating old code

**Prefer typed variables whenever possible!**

---

## ➡️ Next Lesson
[18 — Var](../18_var/)
