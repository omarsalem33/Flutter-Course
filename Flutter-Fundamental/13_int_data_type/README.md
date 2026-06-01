# 13 — int Data Type

## 🎯 Learning Objectives
- Use `int` for whole number operations
- Apply arithmetic with integers
- Understand integer-specific methods and properties

---

## 📖 What is int?

`int` represents **whole numbers** — positive, negative, or zero. No decimal points allowed.

```dart
int score = 95;
int temperature = -3;
int year = 2024;
int zero = 0;
```

---

## 🔧 int Methods & Properties

```dart
int num = -42;

// Absolute value
print(num.abs());         // 42

// Sign check
print(num.isNegative);    // true
print(num.isEven);        // true
print(num.isOdd);         // false

// Convert to other types
print(num.toDouble());    // -42.0
print(num.toString());    // "-42"

// Clamp (keep within a range)
int score = 150;
print(score.clamp(0, 100));  // 100 (capped at max)
```

---

## ➗ Integer Division and Modulo

```dart
int a = 17;
int b = 5;

print(a ~/ b);   // 3  (integer division — drops decimal)
print(a % b);    // 2  (remainder / modulo)

// Real-world use:
int minutes = 137;
int hours = minutes ~/ 60;    // 2 hours
int mins = minutes % 60;      // 17 minutes
print("$hours hours and $mins minutes");
```

---

## 🔢 Numeric Representations

```dart
int decimal = 255;        // regular decimal
int hex = 0xFF;           // hexadecimal
int binary = 0b11111111;  // binary

print(decimal);  // 255
print(hex);      // 255
print(binary);   // 255
// They are all the same number!
```

---

## 🔄 Parsing Strings to int

```dart
String input = "42";
int number = int.parse(input);
print(number + 8);  // 50

// Safe parsing (returns null if invalid)
int? safe = int.tryParse("not a number");
print(safe);  // null
```

---

## ➡️ Next Lesson
[14 — double Data Type](../14_double_data_type/)
