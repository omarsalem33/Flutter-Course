# 27 — Maps Part 2: Iterating, Removing & Nested Maps

## 🎯 Learning Objectives
- Iterate through Map entries, keys, and values
- Remove entries from Maps
- Work with nested Maps

---

## 🔄 Iterating Through Maps

### forEach
```dart
Map<String, int> scores = {"Ahmed": 90, "Sara": 85, "Nour": 92};

scores.forEach((key, value) {
  print("$key scored $value");
});
// Ahmed scored 90
// Sara scored 85
// Nour scored 92
```

### for-in with entries
```dart
for (var entry in scores.entries) {
  print("${entry.key}: ${entry.value}");
}
```

### Loop over keys only
```dart
for (var student in scores.keys) {
  print(student);
}
```

### Loop over values only
```dart
for (var score in scores.values) {
  print(score);
}
```

---

## ➖ Removing Entries

```dart
Map<String, int> scores = {"Ahmed": 90, "Sara": 85, "Nour": 92};

// Remove by key
scores.remove("Sara");
print(scores);  // {Ahmed: 90, Nour: 92}

// Remove all entries
scores.clear();
print(scores);  // {}
```

---

## 🗺️ Nested Maps

A Map can have other Maps as values — great for complex data:

```dart
Map<String, Map<String, dynamic>> students = {
  "Ahmed": {
    "age": 17,
    "grade": "A",
    "city": "Cairo",
  },
  "Sara": {
    "age": 16,
    "grade": "B+",
    "city": "Alexandria",
  },
};

// Access nested values
print(students["Ahmed"]?["grade"]);   // A
print(students["Sara"]?["city"]);     // Alexandria

// Loop through nested map
students.forEach((name, info) {
  print("$name — Grade: ${info["grade"]}, City: ${info["city"]}");
});
```

---

## 🔄 Converting Map → List

```dart
Map<String, int> scores = {"Ahmed": 90, "Sara": 85};

// Keys to List
List<String> names = scores.keys.toList();

// Values to List
List<int> grades = scores.values.toList();

// Entries to List
List<MapEntry<String, int>> entries = scores.entries.toList();
```

---

## 🔧 Useful Map Methods

```dart
Map<String, int> scores = {"Ahmed": 90, "Sara": 85, "Nour": 92};

// Update only if key exists:
scores.update("Ahmed", (value) => value + 5);
print(scores["Ahmed"]);  // 95

// putIfAbsent — add only if key doesn't exist:
scores.putIfAbsent("Ali", () => 88);
print(scores);  // adds Ali: 88
```

---

## ➡️ Next Lesson
[28 — Comparison Operators](../28_comparison_operators/)
