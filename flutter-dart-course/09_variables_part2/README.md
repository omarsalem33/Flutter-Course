# 09 — Variables Part 2: Constants (final & const)

## 🎯 Learning Objectives
- Understand the difference between mutable and immutable variables
- Use `final` for runtime constants
- Use `const` for compile-time constants
- Know when to use each one

---

## 📖 Mutable vs Immutable

A **mutable** variable can change:
```dart
String name = "Ali";
name = "Ahmed";  // ✅ Allowed
```

An **immutable** variable **cannot** change after being set. Dart has two keywords for this: `final` and `const`.

---

## 🔒 final

`final` means the variable can only be **set once**, but its value is determined at **runtime** (when the program runs).

```dart
final String appName = "MyApp";
appName = "AnotherApp";  // ❌ ERROR: Can't change a final variable
```

### When is final set?
```dart
void main() {
  final currentTime = DateTime.now();  // Set when this line runs
  print(currentTime);
}
```

The value of `currentTime` is decided **while the program is running** — that's runtime.

### final with inferred type
```dart
final name = "Sara";    // Dart knows it's a String
final age = 17;         // Dart knows it's an int
```

---

## 🔐 const

`const` means the variable is a **compile-time constant** — its value must be known **before the program runs** (at compile time).

```dart
const double pi = 3.14159;
const int maxScore = 100;
const String appVersion = "1.0.0";
```

### const vs final — Key Difference

```dart
// ✅ final — value decided at runtime
final currentTime = DateTime.now();  // Works!

// ❌ const — value must be known before running
const currentTime = DateTime.now();  // ERROR! DateTime.now() is runtime
```

```dart
// ✅ const — value is always the same, known before running
const double pi = 3.14159;     // Works! pi is always 3.14159
const int maxStudents = 30;    // Works! fixed number
```

---

## 📊 Comparison Table

| Feature | `var` / `type` | `final` | `const` |
|---------|---------------|---------|---------|
| Can change? | ✅ Yes | ❌ No | ❌ No |
| Set when? | Anytime | Once (runtime) | Compile time |
| Value known? | At runtime | At runtime | Before running |

---

## 🧠 When to Use Each?

| Situation | Use |
|-----------|-----|
| Value changes during the program | `var` or typed variable |
| Value set once, may depend on runtime data | `final` |
| Value is truly constant (never changes, always known) | `const` |

---

## 💡 Examples

```dart
void main() {
  // Changes — use regular variable
  int score = 0;
  score = 10;
  score = 20;

  // Set once, runtime value — use final
  final String userId = getUserId();

  // Always the same — use const
  const int maxScore = 100;
  const String language = "Dart";

  print("Score: $score / $maxScore");
  print("Language: $language");
}

String getUserId() {
  return "user_001";
}
```

---

## ➡️ Next Lesson
[10 — Variables Part 3](../10_variables_part3/)
