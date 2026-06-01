# 35 — Switch Case

## 🎯 Learning Objectives
- Understand when to use `switch` instead of `if-else`
- Write `switch-case` statements
- Use `break`, `default`, and fall-through
- Know the limitations of `switch` in Dart

---

## 📖 What Is switch?

`switch` compares **one value** against multiple possible matches:

```dart
switch (variable) {
  case value1:
    // code for value1
    break;
  case value2:
    // code for value2
    break;
  default:
    // code if no case matches
}
```

---

## ✅ Basic Example

```dart
String grade = "B";

switch (grade) {
  case "A":
    print("Excellent! ⭐");
    break;
  case "B":
    print("Very Good! 👍");
    break;
  case "C":
    print("Good");
    break;
  case "D":
    print("Satisfactory");
    break;
  case "F":
    print("Fail ❌");
    break;
  default:
    print("Invalid grade");
}
// Output: Very Good! 👍
```

---

## 🔑 The break Statement

`break` exits the `switch` block. **Always include it** at the end of each case:

```dart
int day = 3;

switch (day) {
  case 1:
    print("Monday");
    break;
  case 2:
    print("Tuesday");
    break;
  case 3:
    print("Wednesday");
    break;  // Without this, code would fall through!
  default:
    print("Other day");
}
```

---

## 📦 Grouping Cases (Fall-Through)

Multiple cases can share the same code by listing them together:

```dart
String day = "Saturday";

switch (day) {
  case "Saturday":
  case "Sunday":
    print("Weekend! 🎉");
    break;
  case "Monday":
  case "Tuesday":
  case "Wednesday":
  case "Thursday":
  case "Friday":
    print("Weekday 💼");
    break;
  default:
    print("Invalid day");
}
```

---

## 🔄 switch with int

```dart
int month = 4;

switch (month) {
  case 1:
    print("January");
    break;
  case 2:
    print("February");
    break;
  case 3:
    print("March");
    break;
  case 4:
    print("April");
    break;
  // ... more months
  default:
    print("Invalid month");
}
```

---

## 🆚 switch vs. if-else

| Feature | switch | if-else |
|---------|--------|---------|
| Best for | Matching one value against many options | Complex conditions |
| Supports | `==` comparison only | Any boolean expression |
| Range checks | ❌ Not supported | ✅ Supported (`>`, `<`, `>=`) |
| Readability | Better for many exact matches | Better for conditions |

```dart
// ✅ Good use of switch — exact value matching:
switch (command) {
  case "start": ...
  case "stop": ...
  case "restart": ...
}

// ✅ Good use of if-else — range/complex conditions:
if (score >= 90) { ... }
else if (score >= 80) { ... }
```

---

## 💡 Real-World Example

```dart
void main() {
  String operation = "+";
  double num1 = 15;
  double num2 = 4;

  switch (operation) {
    case "+":
      print("$num1 + $num2 = ${num1 + num2}");
      break;
    case "-":
      print("$num1 - $num2 = ${num1 - num2}");
      break;
    case "*":
      print("$num1 * $num2 = ${num1 * num2}");
      break;
    case "/":
      if (num2 != 0) {
        print("$num1 / $num2 = ${num1 / num2}");
      } else {
        print("Cannot divide by zero!");
      }
      break;
    default:
      print("Unknown operation");
  }
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `switch` | Compare one value against many cases |
| `case` | Each possible match |
| `break` | Exit the switch block |
| `default` | Runs if no case matches |
| Grouping | List cases together for shared code |
