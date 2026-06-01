# 32 — Logical Operators

## 🎯 Learning Objectives
- Understand all logical operators in Dart
- Know the difference between `&&`, `||`, and `!`
- Understand short-circuit evaluation
- Build truth tables for logical expressions

---

## 📖 What Are Logical Operators?

Logical operators work with **boolean values** (`true` / `false`) and return a boolean result.

| Operator | Name | Description |
|----------|------|-------------|
| `&&` | AND | `true` if **both** operands are true |
| `\|\|` | OR | `true` if **at least one** operand is true |
| `!` | NOT | Reverses the boolean value |

---

## 🔗 AND Operator (&&)

Returns `true` only when **both sides** are `true`:

```dart
print(true && true);    // true
print(true && false);   // false
print(false && true);   // false
print(false && false);  // false
```

```dart
bool hasMoney = true;
bool hasTime = true;

if (hasMoney && hasTime) {
  print("Let's go on vacation! ✈️");
}
```

---

## 🔗 OR Operator (||)

Returns `true` when **at least one side** is `true`:

```dart
print(true || true);    // true
print(true || false);   // true
print(false || true);   // true
print(false || false);  // false
```

```dart
bool hasCard = false;
bool hasCash = true;

if (hasCard || hasCash) {
  print("You can pay! 💳");
}
```

---

## ❗ NOT Operator (!)

Reverses the value:

```dart
print(!true);   // false
print(!false);  // true
```

```dart
bool isBusy = false;

if (!isBusy) {
  print("I'm available! 👋");
}
```

---

## ⚡ Short-Circuit Evaluation

Dart stops evaluating as soon as the result is known:

- **`&&`**: If the left side is `false`, the right side is **NOT checked**
- **`||`**: If the left side is `true`, the right side is **NOT checked**

```dart
// && short-circuit: left is false → right is skipped
bool result1 = false && (10 > 5);  // false (10 > 5 never checked)

// || short-circuit: left is true → right is skipped
bool result2 = true || (10 > 5);   // true (10 > 5 never checked)
```

---

## 📊 Truth Tables

### AND (&&)
| A | B | A && B |
|---|---|--------|
| true | true | **true** |
| true | false | false |
| false | true | false |
| false | false | false |

### OR (||)
| A | B | A \|\| B |
|---|---|----------|
| true | true | **true** |
| true | false | **true** |
| false | true | **true** |
| false | false | false |

### NOT (!)
| A | !A |
|---|----|
| true | false |
| false | true |

---

## 💡 Real-World Example

```dart
void main() {
  int age = 22;
  bool isStudent = true;
  bool hasID = true;

  // Museum entry: must have ID AND (be under 18 OR be a student) for free entry
  if (hasID && (age < 18 || isStudent)) {
    print("Free entry! 🎟️");
  } else {
    print("Ticket costs 50 EGP");
  }
}
```

---

## 📋 Summary

| Operator | Symbol | Key Rule |
|----------|--------|----------|
| AND | `&&` | Both must be true |
| OR | `\|\|` | At least one must be true |
| NOT | `!` | Flips the value |
| Short-circuit | — | Stops early when result is known |
