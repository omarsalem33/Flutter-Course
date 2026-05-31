# 16 — bool Data Type

## 🎯 Learning Objectives
- Use `bool` for true/false values
- Understand boolean logic operators
- Apply booleans in conditions

---

## 📖 What is bool?

`bool` holds only **two possible values**: `true` or `false`. It is the foundation of all decision-making in code.

```dart
bool isStudent = true;
bool hasGraduated = false;
bool isLoggedIn = true;
```

---

## 🔧 Logical Operators

| Operator | Name | Meaning |
|----------|------|---------|
| `&&` | AND | Both must be true |
| `\|\|` | OR | At least one must be true |
| `!` | NOT | Flip true↔false |

```dart
bool a = true;
bool b = false;

print(a && b);   // false (AND: both need to be true)
print(a || b);   // true  (OR: at least one is true)
print(!a);       // false (NOT: flips true to false)
```

---

## 📝 Booleans from Comparisons

Comparisons produce bool values:
```dart
int age = 17;
print(age >= 18);   // false
print(age < 18);    // true
print(age == 17);   // true
print(age != 20);   // true
```

---

## 💡 Real-World Example

```dart
void main() {
  bool isLoggedIn = true;
  bool hasPermission = false;

  bool canAccess = isLoggedIn && hasPermission;
  print("Can access: $canAccess");  // false

  bool canView = isLoggedIn || hasPermission;
  print("Can view: $canView");      // true
}
```

---

## ➡️ Next Lesson
[17 — Dynamic](../17_dynamic/)
