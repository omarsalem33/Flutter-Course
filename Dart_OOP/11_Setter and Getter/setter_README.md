# 04 — Setter

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand what a setter is and why we need it
- Create custom setters with validation logic
- Use setters to control how data is modified
- Combine setters with private variables for full encapsulation

---

## 📖 What is a Setter?

A **setter** is a special method that controls **how** a value is assigned to an attribute. It's like a gatekeeper that checks incoming data before allowing it through.

### Why Use Setters?

| Reason | Example |
|--------|---------|
| **Validation** | Ensure age is not negative |
| **Formatting** | Trim spaces from names |
| **Transformation** | Convert units before storing |
| **Protection** | Prevent invalid data |
| **Side Effects** | Log changes, update other fields |

---

## 🔧 Setter Syntax

### Basic Syntax
```dart
class ClassName {
  Type _privateVariable;

  // Setter
  set variableName(Type value) {
    // Validation and assignment
    _privateVariable = value;
  }
}