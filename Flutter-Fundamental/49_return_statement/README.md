# 49 — Return Statement

## 🎯 Learning Objectives
- Use `return` to send a value back from a function
- Understand return types
- Use returned values in expressions
- Know when to use `return` vs `void`

---

## 📖 What Is return?

`return` sends a value **back** to where the function was called:

```dart
int add(int a, int b) {
  return a + b;  // sends the result back
}

void main() {
  int result = add(3, 5);  // result = 8
  print(result);
}
```

---

## 🔢 Return Types

The return type tells Dart what **kind of value** the function returns:

```dart
int square(int n) {
  return n * n;
}

double divide(double a, double b) {
  return a / b;
}

String greet(String name) {
  return "Hello, $name!";
}

bool isAdult(int age) {
  return age >= 18;
}
```

---

## ⚡ Arrow Return

For single-expression returns, use `=>`:

```dart
// Regular:
int double_(int n) {
  return n * 2;
}

// Arrow (same thing):
int double_(int n) => n * 2;
```

---

## 📦 Using Return Values

Returned values can be used in many ways:

```dart
int multiply(int a, int b) => a * b;

void main() {
  // Store in a variable:
  int result = multiply(4, 5);
  print(result);  // 20

  // Use directly in print:
  print(multiply(3, 7));  // 21

  // Use in expressions:
  int total = multiply(2, 3) + multiply(4, 5);
  print(total);  // 26

  // Use in conditions:
  if (multiply(2, 5) > 8) {
    print("Greater than 8!");
  }

  // Pass to another function:
  print("Result: ${multiply(6, 7)}");
}
```

---

## 🛑 return Stops the Function

Code after `return` does **not** run:

```dart
int getFirst() {
  return 1;
  print("This never runs!");  // ⚠️ Unreachable code
}
```

### Early return:
```dart
String checkAge(int age) {
  if (age < 0) {
    return "Invalid age";  // exits early
  }
  if (age >= 18) {
    return "Adult";
  }
  return "Minor";
}
```

---

## 🆚 void vs Return Type

```dart
// void — does something, returns nothing:
void printSum(int a, int b) {
  print(a + b);
}

// Return type — calculates and sends back:
int getSum(int a, int b) {
  return a + b;
}

void main() {
  printSum(3, 5);              // prints 8 (can't store result)
  int result = getSum(3, 5);   // stores 8 (can use it later)
}
```

> **Rule**: If you need to **use** the result later, use `return`. If you just need to **display** it, `void` is fine.

---

## 💡 Real-World Example

```dart
double calculateTax(double amount, double rate) {
  return amount * rate / 100;
}

double calculateTotal(double amount, double taxRate) {
  double tax = calculateTax(amount, taxRate);
  return amount + tax;
}

String formatPrice(double price) {
  return "${price.toStringAsFixed(2)} EGP";
}

void main() {
  double price = 500.0;
  double total = calculateTotal(price, 14);

  print("Price: ${formatPrice(price)}");
  print("Tax: ${formatPrice(calculateTax(price, 14))}");
  print("Total: ${formatPrice(total)}");
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `return` | Sends a value back to the caller |
| Return type | Declares what type is returned (`int`, `String`, etc.) |
| `void` | Returns nothing |
| Arrow `=>` | Shorthand for `return expression;` |
| Early return | Exits the function before the end |
| Unreachable code | Code after `return` never runs |
