# 50 — Parameters

## 🎯 Learning Objectives
- Pass values to functions using parameters
- Understand the difference between parameters and arguments
- Use multiple parameters
- Work with different parameter types

---

## 📖 What Are Parameters?

**Parameters** are variables listed in the function definition that receive values when the function is called:

```dart
void greet(String name) {  // name is a parameter
  print("Hello, $name!");
}

void main() {
  greet("Omar");  // "Omar" is the argument (value passed)
}
```

---

## 📝 Single Parameter

```dart
void printSquare(int number) {
  print("$number² = ${number * number}");
}

void main() {
  printSquare(5);   // 5² = 25
  printSquare(12);  // 12² = 144
}
```

---

## 📝 Multiple Parameters

Separate parameters with commas:

```dart
void introduce(String name, int age, String city) {
  print("I'm $name, $age years old, from $city");
}

void main() {
  introduce("Omar", 25, "Cairo");
  introduce("Sara", 22, "Alexandria");
}
```

---

## 🔢 Parameters with Different Types

```dart
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

String formatResult(String label, double value) {
  return "$label: ${value.toStringAsFixed(2)}";
}

void main() {
  double bmi = calculateBMI(70.0, 1.75);
  print(formatResult("BMI", bmi));  // BMI: 22.86
}
```

---

## 📋 Parameter Order Matters

Arguments must be passed in the **same order** as parameters:

```dart
void createAccount(String username, String email, int age) {
  print("Username: $username");
  print("Email: $email");
  print("Age: $age");
}

void main() {
  // ✅ Correct order:
  createAccount("omar2024", "omar@email.com", 25);

  // ❌ Wrong order would cause issues:
  // createAccount(25, "omar2024", "omar@email.com");  // Error!
}
```

---

## 🔄 Passing Variables as Arguments

```dart
int add(int a, int b) => a + b;

void main() {
  int x = 10;
  int y = 20;

  // Pass variables:
  int result = add(x, y);
  print(result);  // 30

  // Pass expressions:
  print(add(x + 5, y * 2));  // 55

  // Pass function results:
  print(add(add(1, 2), add(3, 4)));  // 10
}
```

---

## ⚡ Parameters in Arrow Functions

```dart
int multiply(int a, int b) => a * b;
bool isEven(int n) => n % 2 == 0;
String greet(String name) => "Hello, $name!";
```

---

## 💡 Real-World Example

```dart
void printInvoiceLine(String item, int quantity, double unitPrice) {
  double total = quantity * unitPrice;
  print("$item  x$quantity  @$unitPrice  = $total EGP");
}

double calculateInvoiceTotal(double subtotal, double taxRate) {
  double tax = subtotal * taxRate / 100;
  return subtotal + tax;
}

void main() {
  print("========= INVOICE =========");
  printInvoiceLine("Coffee", 2, 25.0);
  printInvoiceLine("Cake", 1, 65.0);
  printInvoiceLine("Water", 3, 10.0);
  print("============================");

  double subtotal = (2 * 25.0) + (1 * 65.0) + (3 * 10.0);
  double total = calculateInvoiceTotal(subtotal, 14);
  print("Subtotal: $subtotal EGP");
  print("Total (with 14% tax): ${total.toStringAsFixed(2)} EGP");
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| Parameter | Variable in function definition |
| Argument | Value passed when calling |
| Multiple params | Separated by commas |
| Order | Arguments must match parameter order |
| Types | Each parameter has its own type |
