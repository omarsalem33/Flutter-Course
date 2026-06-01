# 28 — Comparison Operators

## 🎯 Learning Objectives
- Use all comparison operators in Dart
- Understand how comparisons produce bool values
- Combine comparisons with logical operators

---

## 📖 Comparison Operators

Comparison operators **compare two values** and return a `bool` (`true` or `false`).

| Operator | Name | Example | Result |
|----------|------|---------|--------|
| `==` | Equal to | `5 == 5` | `true` |
| `!=` | Not equal to | `5 != 3` | `true` |
| `>` | Greater than | `7 > 3` | `true` |
| `<` | Less than | `7 < 3` | `false` |
| `>=` | Greater than or equal | `5 >= 5` | `true` |
| `<=` | Less than or equal | `4 <= 3` | `false` |

---

## 📝 Examples

```dart
void main() {
  int a = 10;
  int b = 5;

  print(a == b);   // false
  print(a != b);   // true
  print(a > b);    // true
  print(a < b);    // false
  print(a >= 10);  // true
  print(b <= 5);   // true
}
```

---

## 🔤 Comparing Strings

```dart
String s1 = "apple";
String s2 = "banana";

print(s1 == s2);         // false
print(s1 == "apple");    // true
print(s1 != s2);         // true

// Lexicographic (alphabetical) comparison:
print(s1.compareTo(s2));  // negative (apple comes before banana)
```

---

## ⚠️ == vs ===

Dart uses `==` for equality. There is NO `===` operator (unlike JavaScript).

```dart
// Dart checks value equality
String a = "Hello";
String b = "Hello";
print(a == b);   // true
```

---

## 🔗 Combining with Logical Operators

```dart
int age = 17;
double gpa = 3.8;

// AND — both must be true
bool qualifies = age >= 16 && gpa >= 3.5;
print(qualifies);  // true

// OR — at least one must be true
bool canEnroll = age >= 18 || gpa >= 4.0;
print(canEnroll);  // false

// NOT — flip the result
bool isMinor = !(age >= 18);
print(isMinor);    // true
```

---

## 💡 Real-World Examples

```dart
void main() {
  int score = 75;

  // Grading
  bool passed = score >= 60;
  bool excellent = score >= 90;
  bool needsHelp = score < 60;

  print("Passed: $passed");       // true
  print("Excellent: $excellent"); // false
  print("Needs help: $needsHelp"); // false

  // Age verification
  int userAge = 15;
  bool canVote = userAge >= 18;
  bool canDrive = userAge >= 16;

  print("Can vote: $canVote");    // false
  print("Can drive: $canDrive");  // false
}
```

---

## ➡️ Next Lesson
[29 — Conditional Statements](../29_conditional_statements/)
