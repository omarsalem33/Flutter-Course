# 14 — double Data Type

## 🎯 Learning Objectives
- Use `double` for decimal number operations
- Understand floating-point precision
- Apply double-specific methods

---

## 📖 What is double?

`double` represents **decimal (floating-point) numbers**. Use it when you need precision beyond whole numbers.

```dart
double pi = 3.14159;
double height = 1.75;
double temperature = -15.5;
double price = 99.99;
```

---

## 🔧 double Methods & Properties

```dart
double value = 3.7;

// Rounding
print(value.round());     // 4  (nearest integer)
print(value.ceil());      // 4  (round up always)
print(value.floor());     // 3  (round down always)
print(value.truncate());  // 3  (drop decimal)

// Fixed decimal places
print(value.toStringAsFixed(2));  // "3.70"

// Type check
print(value.isFinite);    // true
print(value.isNaN);       // false (Not a Number)
print(value.isInfinite);  // false
```

---

## ⚠️ Floating Point Precision

```dart
// WARNING: Floating point is not always exact!
print(0.1 + 0.2);        // 0.30000000000000004 (not exactly 0.3!)

// Solution: Use toStringAsFixed() for display
double result = 0.1 + 0.2;
print(result.toStringAsFixed(2));  // "0.30"
```

---

## 🔄 Conversions

```dart
double d = 9.8;
print(d.toInt());      // 9 (truncates)
print(d.toString());   // "9.8"

int i = 5;
double fromInt = i.toDouble();  // 5.0
```

---

## 💰 Common Use Cases

```dart
// Prices and money
double itemPrice = 49.99;
int quantity = 3;
double total = itemPrice * quantity;
print("Total: ${total.toStringAsFixed(2)} EGP");  // Total: 149.97 EGP

// Percentages
double score = 87.0;
double maxScore = 100.0;
double percentage = (score / maxScore) * 100;
print("Percentage: ${percentage.toStringAsFixed(1)}%");  // 87.0%
```

---

## ➡️ Next Lesson
[15 — num Data Type](../15_num_data_type/)
