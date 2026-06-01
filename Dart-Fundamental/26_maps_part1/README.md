# 26 — Maps Part 1: Creating & Accessing

## 🎯 Learning Objectives
- Create Maps with key-value pairs
- Access, add, and update Map entries
- Use Map properties

---

## 📖 What is a Map?

A **Map** stores data as **key-value pairs**. Each key is unique and maps to a value. Think of a real dictionary: the word (key) → the definition (value).

```dart
Map<String, int> scores = {
  "Ahmed": 90,
  "Sara": 85,
  "Nour": 92,
};
```

---

## 🔑 Creating Maps

```dart
// Typed Map (recommended)
Map<String, String> capitals = {
  "Egypt": "Cairo",
  "France": "Paris",
  "Japan": "Tokyo",
};

// Empty Map
Map<String, int> grades = {};
Map<String, int> grades2 = <String, int>{};

// Using Map constructor
var person = Map<String, dynamic>();
person["name"] = "Ahmed";
person["age"] = 17;
```

---

## 🔍 Accessing Values

```dart
Map<String, String> capitals = {
  "Egypt": "Cairo",
  "France": "Paris",
  "Japan": "Tokyo",
};

// Access by key
print(capitals["Egypt"]);   // Cairo
print(capitals["France"]);  // Paris

// Key not found → returns null (not an error)
print(capitals["USA"]);     // null

// Safe access with default
print(capitals["USA"] ?? "Unknown");  // Unknown
```

---

## ✏️ Adding & Updating

```dart
Map<String, int> scores = {"Ahmed": 90};

// Add new entry
scores["Sara"] = 85;
scores["Nour"] = 92;

// Update existing entry
scores["Ahmed"] = 95;   // Updates, doesn't duplicate

print(scores);
// {Ahmed: 95, Sara: 85, Nour: 92}
```

---

## 📋 Map Properties

```dart
Map<String, int> scores = {"Ahmed": 90, "Sara": 85, "Nour": 92};

print(scores.length);        // 3
print(scores.isEmpty);       // false
print(scores.isNotEmpty);    // true
print(scores.keys);          // (Ahmed, Sara, Nour)
print(scores.values);        // (90, 85, 92)
print(scores.entries);       // (MapEntry(Ahmed: 90), ...)
print(scores.containsKey("Ahmed"));    // true
print(scores.containsValue(100));      // false
```

---

## ➡️ Next Lesson
[27 — Maps Part 2](../27_maps_part2/)
