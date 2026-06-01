# 48 — Basic Function

## 🎯 Learning Objectives
- Create and call basic functions
- Use `void` functions (no return value)
- Use arrow functions `=>`
- Understand function execution flow

---

## 📖 Creating a Function

```dart
void functionName() {
  // code to run
}
```

### Calling a function:
```dart
void sayHello() {
  print("Hello! 👋");
}

void main() {
  sayHello();  // Call the function
  sayHello();  // Call it again!
}
// Hello! 👋
// Hello! 👋
```

---

## 🔧 void Functions

`void` means the function does NOT return a value — it just **does something**:

```dart
void printLine() {
  print("====================");
}

void showWelcome() {
  printLine();
  print("  Welcome to Dart!");
  printLine();
}

void main() {
  showWelcome();
}
// ====================
//   Welcome to Dart!
// ====================
```

---

## ⚡ Arrow Functions

For functions with a **single expression**, use `=>`:

```dart
// Regular function:
void sayHi() {
  print("Hi!");
}

// Arrow function (same thing):
void sayHi() => print("Hi!");
```

```dart
void printDouble(int n) => print(n * 2);

void main() {
  printDouble(5);   // 10
  printDouble(15);  // 30
}
```

---

## 🔄 Execution Flow

Functions run when **called**, not when defined:

```dart
void step1() => print("Step 1");
void step2() => print("Step 2");
void step3() => print("Step 3");

void main() {
  print("Start");
  step2();  // Call step 2 first
  step1();  // Then step 1
  step3();  // Then step 3
  print("End");
}
// Start
// Step 2
// Step 1
// Step 3
// End
```

---

## 📦 Functions Calling Functions

Functions can call other functions:

```dart
void header() {
  print("╔══════════════════╗");
}

void footer() {
  print("╚══════════════════╝");
}

void showMessage(String msg) {
  header();
  print("  $msg");
  footer();
}

void main() {
  showMessage("Hello, Dart!");
  showMessage("Learning functions!");
}
```

---

## 📍 Function Placement

Functions are defined **outside** `main()`, but called **inside**:

```dart
// ✅ Correct — function defined outside main
void greet() {
  print("Hello!");
}

void main() {
  greet();
}

// ✅ Also correct — function defined after main (Dart doesn't care about order)
```

---

## 💡 Real-World Example

```dart
void printReceipt() {
  print("═══════════════════════");
  print("      STORE RECEIPT     ");
  print("═══════════════════════");
}

void printItem(String name, double price) {
  print("$name .......... $price EGP");
}

void printTotal(double total) {
  print("───────────────────────");
  print("TOTAL: $total EGP");
  print("Thank you for shopping!");
  print("═══════════════════════");
}

void main() {
  printReceipt();
  printItem("Coffee", 25.0);
  printItem("Sandwich", 45.0);
  printItem("Water", 10.0);
  printTotal(80.0);
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `void` | Function with no return value |
| `()` | Call a function |
| Arrow `=>` | Single-expression shorthand |
| Execution order | Functions run when called, not when defined |
| Placement | Define outside `main()`, call inside |
