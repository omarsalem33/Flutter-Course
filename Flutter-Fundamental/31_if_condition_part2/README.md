# 31 — If Condition Part Two

## 🎯 Learning Objectives
- Use `if` with boolean variables
- Combine conditions using `&&` and `||`
- Use the NOT operator `!`
- Write more complex conditional expressions

---

## 📖 if with Boolean Variables

You can use a `bool` variable directly as a condition:

```dart
bool isLoggedIn = true;

if (isLoggedIn) {
  print("Welcome back!");
}
// Output: Welcome back!
```

```dart
bool isRaining = false;

if (isRaining) {
  print("Take an umbrella ☂️");
}
// No output — isRaining is false
```

---

## 🔗 Combining Conditions with AND (&&)

Both conditions must be `true`:

```dart
int age = 25;
bool hasLicense = true;

if (age >= 18 && hasLicense) {
  print("You can drive! 🚗");
}
// Output: You can drive! 🚗
```

```dart
int age = 16;
bool hasLicense = true;

if (age >= 18 && hasLicense) {
  print("You can drive! 🚗");
}
// No output — age < 18, so && is false
```

---

## 🔗 Combining Conditions with OR (||)

At least one condition must be `true`:

```dart
String day = "Saturday";

if (day == "Saturday" || day == "Sunday") {
  print("It's the weekend! 🎉");
}
// Output: It's the weekend! 🎉
```

---

## ❗ NOT Operator (!)

Reverses the boolean value:

```dart
bool isGameOver = false;

if (!isGameOver) {
  print("Keep playing! 🎮");
}
// Output: Keep playing! 🎮
```

---

## 🧩 Complex Conditions

```dart
int score = 85;
bool hasBonusPoints = true;
int attendance = 90;

if (score >= 80 && (hasBonusPoints || attendance >= 85)) {
  print("Excellent student! ⭐");
}
// Output: Excellent student! ⭐
```

> Use parentheses `()` to group conditions and control evaluation order.

---

## 💡 Real-World Example

```dart
void main() {
  String username = "admin";
  String password = "12345";
  bool isActive = true;

  if (username == "admin" && password == "12345" && isActive) {
    print("Login successful! ✅");
  }

  if (username != "admin" || password != "12345") {
    print("Invalid credentials ❌");
  }
}
```

---

## 📋 Summary

| Operator | Meaning | Result |
|----------|---------|--------|
| `&&` | AND | `true` only if BOTH are true |
| `\|\|` | OR | `true` if AT LEAST ONE is true |
| `!` | NOT | Reverses the value |
