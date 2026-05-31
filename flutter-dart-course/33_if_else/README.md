# 33 — If Else

## 🎯 Learning Objectives
- Use `if-else` to handle two outcomes
- Use `else if` for multiple conditions
- Understand the ternary operator `? :`
- Choose the right conditional structure

---

## 📖 if-else Statement

When you need **two paths** — one for `true`, one for `false`:

```dart
if (condition) {
  // runs if condition is TRUE
} else {
  // runs if condition is FALSE
}
```

```dart
int age = 15;

if (age >= 18) {
  print("You are an adult ✅");
} else {
  print("You are a minor ❌");
}
// Output: You are a minor ❌
```

---

## 🔀 else if — Multiple Conditions

Check conditions one by one. **Only the first match runs**:

```dart
int score = 75;

if (score >= 90) {
  print("Grade: A");
} else if (score >= 80) {
  print("Grade: B");
} else if (score >= 70) {
  print("Grade: C");
} else if (score >= 60) {
  print("Grade: D");
} else {
  print("Grade: F");
}
// Output: Grade: C
```

> ⚠️ Unlike multiple separate `if` statements, `else if` stops at the first match!

---

## 🆚 Multiple if vs. else if

```dart
int x = 95;

// Multiple if — ALL conditions checked:
if (x >= 90) print("A");   // ✅ prints
if (x >= 80) print("B");   // ✅ prints (also true!)
if (x >= 70) print("C");   // ✅ prints (also true!)

// else if — ONLY first match:
if (x >= 90) {
  print("A");              // ✅ prints
} else if (x >= 80) {
  print("B");              // ⏭️ skipped
} else if (x >= 70) {
  print("C");              // ⏭️ skipped
}
```

---

## ⚡ Ternary Operator (? :)

A shortcut for simple if-else:

```dart
// Syntax: condition ? valueIfTrue : valueIfFalse

int age = 20;
String status = age >= 18 ? "Adult" : "Minor";
print(status);  // Adult

// Same as:
// String status;
// if (age >= 18) {
//   status = "Adult";
// } else {
//   status = "Minor";
// }
```

```dart
int score = 45;
print(score >= 50 ? "PASS ✅" : "FAIL ❌");
// Output: FAIL ❌
```

---

## 💡 Real-World Example

```dart
void main() {
  double temperature = 28.5;

  String advice;
  if (temperature >= 40) {
    advice = "Stay home! Extreme heat 🔥";
  } else if (temperature >= 30) {
    advice = "Drink lots of water 💧";
  } else if (temperature >= 20) {
    advice = "Nice weather! Enjoy ☀️";
  } else if (temperature >= 10) {
    advice = "Wear a jacket 🧥";
  } else {
    advice = "It's freezing! Bundle up 🥶";
  }

  print("Temperature: $temperature°C");
  print("Advice: $advice");
}
```

---

## 📋 Summary

| Structure | Use When |
|-----------|----------|
| `if` | One condition to check |
| `if-else` | Two possible outcomes |
| `if-else if-else` | Multiple conditions (first match wins) |
| `? :` (ternary) | Simple one-line if-else assignment |
