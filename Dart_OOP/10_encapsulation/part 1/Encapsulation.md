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