# 02 — Encapsulation Part 2

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Use private methods in Dart
- Understand the difference between private variables and private methods
- Create helper methods that are hidden from outside

---

## 📖 Explanation

In the previous lesson, we learned how to make **variables** private. Now let's learn about **private methods**.

### Private Methods

Just like variables, methods can be private too by adding `_`:

```dart
class EmailService {
  String _serverAddress = "smtp.example.com";

  // Private method — only used internally
  bool _isValidEmail(String email) {
    return email.contains("@") && email.contains(".");
  }

  // Public method — available to everyone
  void sendEmail(String to, String message) {
    if (_isValidEmail(to)) {
      print("Sending to $to via $_serverAddress");
      print("Message: $message");
    } else {
      print("Invalid email address!");
    }
  }
}
```

### Why Private Methods?

| Reason | Example |
|--------|---------|
| **Hide complexity** | A `login()` method may internally call `_hashPassword()`, `_checkDatabase()`, `_createSession()` |
| **Prevent misuse** | `_deleteAllData()` should never be called directly |
| **Organize code** | Break big tasks into small helper methods |

### Full Example

```dart
class Calculator {
  double _lastResult = 0;

  // Private helper method
  double _validateNumber(double num) {
    if (num.isNaN || num.isInfinite) {
      print("Warning: Invalid number, using 0");
      return 0;
    }
    return num;
  }

  void add(double a, double b) {
    a = _validateNumber(a);
    b = _validateNumber(b);
    _lastResult = a + b;
    print("Result: $_lastResult");
  }

  void showLastResult() {
    print("Last result was: $_lastResult");
  }
}
```

---

## 💡 Tips
- Private methods are like **kitchen staff** in a restaurant — customers never see them, but they do important work
- Use private methods to break complex public methods into smaller pieces
- If a method is only used inside the class, make it private

---

## ➡️ Next Lesson
[03 — Encapsulation Part 3](../03_encapsulation_part3/)
