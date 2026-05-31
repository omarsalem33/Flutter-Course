# 20 — Dot Operator

## 🎯 Learning Objectives
- Use the dot operator to access properties and methods
- Chain dot operators
- Understand method cascades (`..`)

---

## 📖 What is the Dot Operator?

The `.` (dot) operator is used to **access properties and methods** of an object. Everything in Dart is an object, so you'll use `.` constantly.

```dart
"Hello".length        // accessing a property
"Hello".toUpperCase() // calling a method
```

---

## 📝 Syntax

```dart
object.property       // access a property
object.method()       // call a method
object.method(args)   // call a method with arguments
```

---

## 🔧 Examples with Different Types

### Strings
```dart
String name = "ahmed";
print(name.length);          // 5
print(name.toUpperCase());   // AHMED
print(name.contains("med")); // true
print(name.replaceAll("a", "e")); // ehmed
```

### Numbers
```dart
int n = -15;
print(n.abs());       // 15
print(n.isNegative);  // true (property, no parentheses!)
print(n.toDouble());  // -15.0
```

### Lists
```dart
List<int> numbers = [3, 1, 4, 1, 5];
print(numbers.length);    // 5
print(numbers.first);     // 3
print(numbers.last);      // 5
numbers.sort();
print(numbers);           // [1, 1, 3, 4, 5]
```

---

## 🔗 Method Chaining

Chain multiple dot calls together:
```dart
String result = "  hello world  "
    .trim()          // "hello world"
    .toUpperCase();  // "HELLO WORLD"

print(result);  // HELLO WORLD
```

---

## 💧 Cascade Operator (`..`)

The cascade `..` lets you call multiple methods on the same object without repeating it:

```dart
// Without cascade:
List<int> nums = [];
nums.add(1);
nums.add(2);
nums.add(3);

// With cascade:
List<int> nums2 = []
  ..add(1)
  ..add(2)
  ..add(3);

print(nums2);  // [1, 2, 3]
```

---

## 💡 Properties vs Methods

| Feature | Properties | Methods |
|---------|-----------|---------|
| Syntax | `obj.name` (no `()`) | `obj.name()` (with `()`) |
| Purpose | Get a value | Perform an action |
| Example | `"hi".length` | `"hi".toUpperCase()` |

---

## ➡️ Next Lesson
[21 — Collection Data Types Overview](../21_collection_overview/)
