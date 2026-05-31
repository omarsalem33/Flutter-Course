# 08 — Variables Part 1: Introduction & Declaration

## 🎯 Learning Objectives
- Understand what a variable is
- Declare and initialize variables in Dart
- Understand naming rules and conventions

---

## 📖 What is a Variable?

A **variable** is a named storage location in memory that holds a value. Think of it like a **labeled box** — the label is the variable name, and what's inside is the value.

```
┌─────────────────┐
│  name = "Ahmed" │   ← Variable
└─────────────────┘
  label    value
```

Variables allow you to:
- **Store** data to use later
- **Change** data during the program
- **Reuse** values without repeating them

---

## 🔑 Declaring a Variable

### Syntax
```dart
DataType variableName = value;
```

### Examples
```dart
String name = "Sara";       // text
int age = 17;               // whole number
double height = 1.65;       // decimal number
bool isStudent = true;      // true or false
```

---

## 📝 Declaration vs Initialization

**Declaration** — creating the variable (giving it a name and type):
```dart
String city;    // declared but no value yet
```

**Initialization** — giving the variable its first value:
```dart
city = "Cairo";  // now it has a value
```

**Declaration + Initialization** (most common):
```dart
String city = "Cairo";  // both at once
```

---

## 📏 Variable Naming Rules

### ✅ MUST follow these rules:
1. Can contain letters, digits, and underscores `_`
2. Must **start with a letter or underscore** (not a digit)
3. Cannot be a **reserved keyword** (like `void`, `int`, `if`)
4. **Case-sensitive** (`name` ≠ `Name` ≠ `NAME`)

### Examples:
```dart
// ✅ Valid names
String firstName = "Ali";
int age2 = 16;
double _score = 95.5;
bool isActive = true;

// ❌ Invalid names
int 2age = 16;          // starts with a digit
String my-name = "Ali"; // hyphen not allowed
bool void = true;       // reserved keyword
```

---

## 🎨 Naming Conventions (Best Practices)

Dart uses **camelCase** for variable names:
- First word lowercase
- Each next word starts with uppercase

```dart
// ✅ Good — camelCase
String firstName = "Ahmed";
int studentAge = 16;
double totalScore = 98.5;

// ❌ Avoid
String first_name = "Ahmed";  // snake_case (used in Python, not Dart)
String FirstName = "Ahmed";   // PascalCase (used for classes, not variables)
```

---

## 🔄 Changing a Variable's Value

```dart
String color = "red";
print(color);     // Output: red

color = "blue";   // Change the value
print(color);     // Output: blue
```

---

## ➡️ Next Lesson
[09 — Variables Part 2](../09_variables_part2/)
