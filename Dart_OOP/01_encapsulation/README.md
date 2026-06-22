# 01 — Encapsulation

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand what encapsulation means in OOP
- Use private variables in Dart using the underscore `_` prefix
- Explain why hiding internal data is important

---

## 📖 Explanation

**Encapsulation** is one of the four pillars of Object-Oriented Programming (OOP). It means **hiding the internal details** of a class and only exposing what is necessary.

### Why Encapsulation?

| Benefit | Description |
|---------|-------------|
| **Data Protection** | Prevents external code from changing data directly |
| **Control** | You decide how data is accessed or modified |
| **Flexibility** | You can change internal logic without breaking other code |

### How Dart Does Encapsulation

In Dart, you make a variable **private** by adding an underscore `_` before its name:

```dart
class Student {
  String _name;   // private — cannot be accessed outside the library
  int _age;       // private

  Student(this._name, this._age);

  void displayInfo() {
    print("Name: $_name, Age: $_age");
  }
}
```

### Key Rules

1. `_variableName` makes it private to the **library** (file)
2. There is no `public`, `private`, or `protected` keyword in Dart
3. Without `_`, everything is public by default

### Example

```dart
class BankAccount {
  String _accountHolder;
  double _balance;

  BankAccount(this._accountHolder, this._balance);

  void showBalance() {
    print("$_accountHolder has \$${_balance}");
  }
}

void main() {
  var account = BankAccount("Omar", 5000.0);
  account.showBalance(); // ✅ Works — uses public method
  // account._balance = 0; // ⚠️ Should not access private directly
}
```

---

## 💡 Tips
- Think of encapsulation like a **capsule** — medicine is inside, protected from the outside
- Always make variables private if they should not be changed directly
- Use methods to control how data is accessed

---

## ➡️ Next Lesson
[02 — Encapsulation Part 2](../02_encapsulation_part2/)
