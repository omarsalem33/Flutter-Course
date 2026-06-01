# 46 — For Each Loop

## 🎯 Learning Objectives
- Use the `forEach` method on collections
- Understand the difference between `for-in` and `forEach`
- Pass functions to `forEach`
- Use arrow functions with `forEach`

---

## 📖 forEach Syntax

`forEach` is a **method** on Lists, Sets, and Maps that takes a **function**:

```dart
collection.forEach((element) {
  // do something with element
});
```

---

## ✅ Basic Example

```dart
List<String> names = ["Omar", "Sara", "Ali"];

names.forEach((name) {
  print("Hello, $name!");
});
// Hello, Omar!
// Hello, Sara!
// Hello, Ali!
```

---

## ⚡ Arrow Function Syntax

For single-line operations, use the arrow `=>`:

```dart
List<int> numbers = [1, 2, 3, 4, 5];

// Full syntax:
numbers.forEach((n) {
  print(n * 2);
});

// Arrow syntax (shorter):
numbers.forEach((n) => print(n * 2));

// Both output: 2, 4, 6, 8, 10
```

---

## 🗺️ forEach with Maps

```dart
Map<String, int> scores = {
  "Omar": 92,
  "Sara": 85,
  "Ali": 78,
};

// forEach on Map takes TWO parameters (key, value):
scores.forEach((name, score) {
  print("$name scored $score");
});
```

---

## 🆚 for-in vs forEach

```dart
List<String> items = ["Apple", "Banana", "Cherry"];

// for-in:
for (var item in items) {
  print(item);
}

// forEach:
items.forEach((item) {
  print(item);
});

// forEach with arrow:
items.forEach((item) => print(item));
```

| Feature | `for-in` | `forEach` |
|---------|----------|-----------|
| Syntax | Statement | Method call |
| `break` | ✅ Supported | ❌ Not supported |
| `continue` | ✅ Supported | ❌ Use `return` instead |
| `async/await` | ✅ Works | ❌ Doesn't work properly |
| Arrow syntax | ❌ | ✅ |

---

## ⚠️ No break in forEach

```dart
// ❌ Cannot use break in forEach:
// numbers.forEach((n) {
//   if (n == 3) break;  // Error!
// });

// ✅ Use return to skip (like continue):
List<int> numbers = [1, 2, 3, 4, 5];
numbers.forEach((n) {
  if (n == 3) return;  // skips 3 only
  print(n);
});
// Output: 1, 2, 4, 5
```

---

## 📋 forEach with Index

Use `asMap()` to get index + value:

```dart
List<String> fruits = ["Apple", "Banana", "Cherry"];

fruits.asMap().forEach((index, fruit) {
  print("$index: $fruit");
});
// 0: Apple
// 1: Banana
// 2: Cherry
```

---

## 💡 Real-World Example

```dart
void main() {
  // Product catalog
  List<Map<String, dynamic>> products = [
    {"name": "Laptop", "price": 15000, "category": "Electronics"},
    {"name": "Shirt", "price": 250, "category": "Clothing"},
    {"name": "Phone", "price": 8000, "category": "Electronics"},
    {"name": "Book", "price": 100, "category": "Education"},
  ];

  // Print all electronics
  print("Electronics:");
  products.forEach((product) {
    if (product["category"] == "Electronics") {
      print("  ${product["name"]} — ${product["price"]} EGP");
    }
  });

  // Calculate total value
  double total = 0;
  products.forEach((product) => total += product["price"]);
  print("Total catalog value: $total EGP");
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `forEach` | Method that runs a function on each element |
| Arrow `=>` | Short syntax for single expressions |
| Map forEach | Takes `(key, value)` parameters |
| No `break` | Cannot break out of forEach |
| `return` | Acts like `continue` (skips one element) |
| `asMap()` | Converts List to Map with index as key |
