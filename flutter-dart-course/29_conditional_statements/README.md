# 29 — Conditional Statements

## 🎯 Learning Objectives
- Use `if`, `else if`, and `else` statements
- Use the ternary operator
- Use `switch` statements
- Nest conditionals appropriately

---

## 📖 if Statement

The `if` statement runs code **only when a condition is true**.

```dart
if (condition) {
  // runs if condition is true
}
```

```dart
int score = 85;

if (score >= 60) {
  print("You passed!");
}
```

---

## 🔀 if-else

```dart
int score = 45;

if (score >= 60) {
  print("PASS ✅");
} else {
  print("FAIL ❌");
}
```

---

## 🔀 if-else if-else (Multiple Conditions)

```dart
int score = 78;

if (score >= 90) {
  print("Grade: A — Excellent!");
} else if (score >= 80) {
  print("Grade: B — Very Good!");
} else if (score >= 70) {
  print("Grade: C — Good");
} else if (score >= 60) {
  print("Grade: D — Satisfactory");
} else {
  print("Grade: F — Fail");
}
// Output: Grade: C — Good
```

---

## ⚡ Ternary Operator

A shortcut for simple if-else:

```dart
// Syntax: condition ? value_if_true : value_if_false

int age = 17;
String status = age >= 18 ? "Adult" : "Minor";
print(status);  // Minor

// Another example:
int score = 75;
print(score >= 60 ? "PASS" : "FAIL");  // PASS
```

---

## 🔄 switch Statement

Use `switch` when checking the same variable against many values:

```dart
String day = "Monday";

switch (day) {
  case "Saturday":
  case "Sunday":
    print("Weekend! 🎉");
    break;
  case "Monday":
    print("Start of the week");
    break;
  case "Friday":
    print("Almost the weekend!");
    break;
  default:
    print("Regular day");
}
// Output: Start of the week
```

---

## 🪆 Nested Conditionals

```dart
int age = 20;
bool hasLicense = true;

if (age >= 18) {
  if (hasLicense) {
    print("You can drive! 🚗");
  } else {
    print("You are old enough but need a license.");
  }
} else {
  print("You are too young to drive.");
}
```

---

## 💡 Real-World Example

```dart
void main() {
  double gpa = 3.7;
  int hoursCompleted = 90;

  // Scholarship eligibility
  if (gpa >= 3.5 && hoursCompleted >= 60) {
    print("Eligible for full scholarship! 🎓");
  } else if (gpa >= 3.0 && hoursCompleted >= 30) {
    print("Eligible for partial scholarship.");
  } else {
    print("Not eligible for scholarship this semester.");
  }
}
```

---

## 📋 Summary

| Statement | Use when |
|-----------|----------|
| `if` | Check one condition |
| `if-else` | Two options |
| `if-else if-else` | Multiple options |
| `? :` (ternary) | Simple one-line if-else |
| `switch` | Comparing one variable to many values |
