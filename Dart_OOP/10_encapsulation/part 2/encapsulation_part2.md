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