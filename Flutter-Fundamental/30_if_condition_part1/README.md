# 30 — If Condition Part One

## 🎯 Learning Objectives
- Understand what conditional statements are
- Write a basic `if` statement
- Use comparison operators inside conditions
- Understand boolean expressions in conditions

---

## 📖 What Is a Condition?

A **condition** is an expression that evaluates to `true` or `false`.
The `if` statement lets you run code **only when a condition is true**.

```dart
if (condition) {
  // This code runs ONLY if condition is true
}
```

---

## ✅ Basic if Statement

```dart
int age = 20;

if (age >= 18) {
  print("You are an adult");
}
// Output: You are an adult
```

If the condition is `false`, the code inside `{}` is **skipped**:

```dart
int age = 15;

if (age >= 18) {
  print("You are an adult");
}
// No output — condition is false
```

---

## 🔢 Using Comparison Operators

| Operator | Meaning |
|----------|---------|
| `==` | Equal to |
| `!=` | Not equal to |
| `>` | Greater than |
| `<` | Less than |
| `>=` | Greater than or equal |
| `<=` | Less than or equal |

```dart
int score = 100;

if (score == 100) {
  print("Perfect score!");
}
// Output: Perfect score!
```

```dart
String name = "Omar";

if (name == "Omar") {
  print("Welcome, Omar!");
}
// Output: Welcome, Omar!
```

---

## 📌 Multiple if Statements

You can use multiple `if` statements — each one is checked independently:

```dart
int temperature = 35;

if (temperature > 30) {
  print("It's hot! 🔥");
}

if (temperature > 20) {
  print("It's warm");
}

if (temperature > 10) {
  print("It's cool");
}
// Output:
// It's hot! 🔥
// It's warm
// It's cool
```

> ⚠️ Notice: ALL three conditions are true, so ALL three print statements run.

---

## 💡 Real-World Example

```dart
void main() {
  double balance = 5000.0;
  double withdrawAmount = 3000.0;

  if (balance >= withdrawAmount) {
    balance -= withdrawAmount;
    print("Withdrawal successful! Remaining: $balance EGP");
  }

  if (balance < 1000) {
    print("Warning: Low balance!");
  }
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `if` | Runs code only when condition is `true` |
| Condition | An expression that returns `true` or `false` |
| `{}` braces | Enclose the code to run when condition is met |
| Multiple `if` | Each `if` is checked independently |
