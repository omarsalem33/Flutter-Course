# 22 — List Part 1: Creating & Accessing

## 🎯 Learning Objectives
- Create Lists with different types
- Access elements by index
- Understand List properties

---

## 📖 What is a List?

A **List** is an ordered collection of items. Like a numbered array, every item has an **index** starting from 0.

```
Index:  0        1          2         3
List: ["Math", "Science", "Arabic", "English"]
```

---

## 🔑 Creating Lists

### Typed List (recommended)
```dart
List<String> subjects = ["Math", "Science", "Dart"];
List<int> scores = [90, 85, 92, 88];
List<double> prices = [9.99, 24.50, 5.00];
```

### Empty List
```dart
List<String> names = [];           // empty, typed
List<int> numbers = <int>[];       // alternative syntax
var empty = <String>[];            // with var
```

### Fixed-length List
```dart
List<int> fixed = List.filled(5, 0);  // [0, 0, 0, 0, 0]
// Creates a list of 5 elements, all initialized to 0
```

---

## 🔍 Accessing Elements

```dart
List<String> fruits = ["apple", "banana", "cherry", "date"];

// By index (starts at 0)
print(fruits[0]);     // apple
print(fruits[2]);     // cherry
print(fruits[3]);     // date

// First and last (properties)
print(fruits.first);  // apple
print(fruits.last);   // date

// Length
print(fruits.length); // 4
```

---

## ⚠️ Index Out of Range Error

```dart
List<String> fruits = ["apple", "banana"];
print(fruits[5]);  // ❌ CRASH: RangeError (index 5 out of range)
// Valid indices: 0 and 1 only
```

---

## 🔄 Modifying Elements

```dart
List<String> colors = ["red", "green", "blue"];
colors[1] = "yellow";   // Change index 1
print(colors);          // [red, yellow, blue]
```

---

## 📋 List Properties

```dart
List<int> nums = [1, 2, 3, 4, 5];

print(nums.length);        // 5
print(nums.isEmpty);       // false
print(nums.isNotEmpty);    // true
print(nums.first);         // 1
print(nums.last);          // 5
print(nums.reversed.toList()); // [5, 4, 3, 2, 1]
```

---

## ➡️ Next Lesson
[23 — List Part 2](../23_list_part2/)
