# 47 — Functions Overview

## 🎯 Learning Objectives
- Understand what functions are and why we use them
- Know the different types of functions in Dart
- Understand the concept of reusability
- See how functions organize code

---

## 📖 What Is a Function?

A **function** is a reusable block of code that performs a specific task.

Without functions:
```dart
// Calculate area of rectangle 1
double length1 = 10, width1 = 5;
double area1 = length1 * width1;
print("Area 1: $area1");

// Calculate area of rectangle 2
double length2 = 7, width2 = 3;
double area2 = length2 * width2;
print("Area 2: $area2");

// Calculate area of rectangle 3
double length3 = 15, width3 = 8;
double area3 = length3 * width3;
print("Area 3: $area3");

// 😫 Same code repeated 3 times!
```

With functions:
```dart
double rectangleArea(double length, double width) {
  return length * width;
}

print("Area 1: ${rectangleArea(10, 5)}");
print("Area 2: ${rectangleArea(7, 3)}");
print("Area 3: ${rectangleArea(15, 8)}");
// ✅ Clean, reusable, no repetition!
```

---

## 🎯 Why Use Functions?

| Benefit | Description |
|---------|-------------|
| **Reusability** | Write once, use many times |
| **Organization** | Break complex programs into smaller parts |
| **Readability** | Give meaningful names to blocks of code |
| **Maintainability** | Fix bugs in one place |
| **Testing** | Test each function independently |

---

## 🧩 Parts of a Function

```dart
ReturnType functionName(ParameterType parameterName) {
  // function body
  return value;
}
```

| Part | Description | Example |
|------|-------------|---------|
| Return type | What the function gives back | `int`, `String`, `void` |
| Function name | What you call the function | `calculateArea` |
| Parameters | Input the function needs | `(double length)` |
| Body | The code that runs | `{ return length * 2; }` |
| Return | The output value | `return result;` |

---

## 📋 Types of Functions in Dart

### 1. Functions with no parameters, no return value
```dart
void sayHello() {
  print("Hello! 👋");
}
```

### 2. Functions with parameters, no return value
```dart
void greet(String name) {
  print("Hello, $name!");
}
```

### 3. Functions with parameters and return value
```dart
int add(int a, int b) {
  return a + b;
}
```

### 4. Arrow functions (short syntax)
```dart
int multiply(int a, int b) => a * b;
```

---

## 🔑 The main() Function

Every Dart program starts with `main()`:

```dart
void main() {
  // Your program starts here
  print("Hello, Dart!");
}
```

- `void` → returns nothing
- `main` → special name Dart looks for
- `()` → no parameters
- `{}` → the code to run

---

## 💡 Real-World Analogy

Think of functions like appliances:
- **Blender**: Input → fruits, Output → juice
- **Oven**: Input → dough, Output → bread
- **Calculator**: Input → numbers, Output → result

You don't rebuild the blender each time — you just **use** it!

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| Function | Reusable block of code |
| `void` | Function returns nothing |
| Parameters | Input values for the function |
| Return value | Output of the function |
| `main()` | Entry point of every Dart program |
| Arrow `=>` | Shorthand for single-expression functions |
