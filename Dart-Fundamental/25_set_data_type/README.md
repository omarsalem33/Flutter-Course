# 25 — Set Data Type

## 🎯 Learning Objectives
- Create and use Sets
- Understand Set operations (union, intersection, difference)
- Know when to use Set vs List

---

## 📖 What is a Set?

A **Set** is an unordered collection of **unique** values. No duplicates are allowed.

```dart
Set<String> colors = {"red", "green", "blue"};
Set<int> grades = {90, 85, 92};
```

---

## 🔧 Creating Sets

```dart
// Typed Set
Set<String> fruits = {"apple", "banana", "cherry"};

// Empty Set (MUST use the type — {} alone creates a Map!)
Set<String> empty = {};
Set<String> empty2 = <String>{};

// From a List (removes duplicates)
List<int> listWithDups = [1, 2, 2, 3, 3, 3];
Set<int> uniqueNums = Set.from(listWithDups);
print(uniqueNums);  // {1, 2, 3}
```

---

## ➕➖ Adding & Removing

```dart
Set<String> tags = {"dart", "flutter"};

tags.add("mobile");
tags.add("dart");    // Already exists — ignored!
print(tags);         // {dart, flutter, mobile}

tags.remove("flutter");
print(tags);         // {dart, mobile}

print(tags.contains("dart"));  // true
print(tags.length);            // 2
```

---

## 🔀 Set Operations (Mathematical)

```dart
Set<int> a = {1, 2, 3, 4, 5};
Set<int> b = {3, 4, 5, 6, 7};

// Union — all elements from both
print(a.union(b));           // {1, 2, 3, 4, 5, 6, 7}

// Intersection — only elements in BOTH
print(a.intersection(b));    // {3, 4, 5}

// Difference — in a but NOT in b
print(a.difference(b));      // {1, 2}
```

---

## 🔄 Converting Between List and Set

```dart
// List → Set (remove duplicates)
List<String> names = ["Ahmed", "Sara", "Ahmed", "Nour"];
Set<String> uniqueNames = names.toSet();
print(uniqueNames);  // {Ahmed, Sara, Nour}

// Set → List (if you need ordered access)
List<String> nameList = uniqueNames.toList();
print(nameList[0]);  // Ahmed (or another — order not guaranteed)
```

---

## ⚖️ List vs Set — Quick Comparison

| Need | Use |
|------|-----|
| Order matters | `List` |
| No duplicates needed | `Set` |
| Access by index | `List` |
| Fast membership check | `Set` |
| Mathematical set operations | `Set` |

---

## ➡️ Next Lesson
[26 — Maps Part 1](../26_maps_part1/)
