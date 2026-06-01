# 21 — Collection Data Types Overview

## 🎯 Learning Objectives
- Understand the three main collection types in Dart
- Know when to use List, Set, or Map
- Compare collection types

---

## 📖 What are Collections?

Collections are data structures that hold **multiple values** in one variable.

```
Single value:  int age = 17;
Collection:    List<int> scores = [90, 85, 92, 88];
```

---

## 🗂️ The Three Collection Types

### 1. List — Ordered, allows duplicates
```dart
List<String> fruits = ["apple", "banana", "apple"];
// - Items have an index (position)
// - Can have duplicates
// - Order is preserved
// Access by index: fruits[0] → "apple"
```

### 2. Set — Unordered, no duplicates
```dart
Set<String> uniqueFruits = {"apple", "banana", "apple"};
// - No duplicates (the second "apple" is ignored)
// - No guaranteed order
// - Fast for checking if something exists
print(uniqueFruits); // {apple, banana}
```

### 3. Map — Key-Value pairs
```dart
Map<String, int> scores = {
  "Ahmed": 90,
  "Sara": 85,
  "Nour": 92,
};
// - Each item has a unique key
// - Access by key: scores["Ahmed"] → 90
// - Keys must be unique, values can repeat
```

---

## 📊 Comparison Table

| Feature | List | Set | Map |
|---------|------|-----|-----|
| Order | ✅ Maintained | ❌ Not guaranteed | ✅ Insertion order |
| Duplicates | ✅ Allowed | ❌ Not allowed | ✅ Values yes, keys no |
| Access | By index `[0]` | Loop only | By key `["name"]` |
| Syntax | `[...]` | `{...}` | `{"key": value}` |
| Use case | Ordered list | Unique items | Lookup table |

---

## 🤔 When to Use Each?

| Situation | Use |
|-----------|-----|
| Student roster (order matters) | `List` |
| Unique tags/categories | `Set` |
| Country → capital lookup | `Map` |
| Shopping cart items | `List` |
| Visited pages (no repeats) | `Set` |
| User profile data | `Map` |

---

## ➡️ Next Lesson
[22 — List Part 1](../22_list_part1/)
