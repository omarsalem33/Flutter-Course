# 45 — For In Loop

## 🎯 Learning Objectives
- Use `for-in` to iterate over collections
- Understand the difference between `for` and `for-in`
- Iterate over Lists, Sets, and Maps
- Know when to use `for-in`

---

## 📖 For-In Syntax

```dart
for (var element in collection) {
  // use element
}
```

`for-in` gives you each **element** directly — no index needed!

---

## ✅ Basic Example

```dart
List<String> fruits = ["Apple", "Banana", "Cherry"];

for (String fruit in fruits) {
  print(fruit);
}
// Apple
// Banana
// Cherry
```

Compare with regular `for`:
```dart
// Regular for — uses index:
for (int i = 0; i < fruits.length; i++) {
  print(fruits[i]);
}

// for-in — cleaner, no index:
for (String fruit in fruits) {
  print(fruit);
}
```

---

## 📋 With Lists

```dart
List<int> scores = [85, 92, 78, 95, 88];

int total = 0;
for (int score in scores) {
  total += score;
}

double average = total / scores.length;
print("Average: $average");  // Average: 87.6
```

---

## 🔵 With Sets

```dart
Set<String> colors = {"Red", "Green", "Blue", "Red"};

for (String color in colors) {
  print(color);
}
// Red
// Green
// Blue
// (no duplicate "Red" — Sets are unique!)
```

---

## 🗺️ With Maps

Iterate over **keys**, **values**, or **entries**:

```dart
Map<String, int> ages = {
  "Omar": 25,
  "Sara": 22,
  "Ali": 28,
};

// Keys:
for (String name in ages.keys) {
  print(name);
}

// Values:
for (int age in ages.values) {
  print(age);
}

// Entries (key-value pairs):
for (var entry in ages.entries) {
  print("${entry.key} is ${entry.value} years old");
}
```

---

## 🆚 for vs. for-in

| Feature | `for` | `for-in` |
|---------|-------|----------|
| Access index | ✅ Yes | ❌ No |
| Cleaner syntax | ❌ | ✅ |
| Modify collection | ✅ (via index) | ❌ Not recommended |
| Works with | Lists, ranges | Lists, Sets, Maps, any Iterable |

**Use `for`** when you need the index.
**Use `for-in`** when you just need each element.

---

## ⚡ Using var and Type Annotation

```dart
List<String> names = ["Omar", "Sara", "Ali"];

// With explicit type:
for (String name in names) {
  print(name);
}

// With var (type inferred):
for (var name in names) {
  print(name);
}
```

---

## 💡 Real-World Example

```dart
void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Omar", "grade": 92},
    {"name": "Sara", "grade": 85},
    {"name": "Ali", "grade": 78},
    {"name": "Nour", "grade": 95},
  ];

  print("Honor Roll (grade >= 90):");
  for (var student in students) {
    if (student["grade"] >= 90) {
      print("⭐ ${student["name"]} — ${student["grade"]}");
    }
  }
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `for-in` | Iterate over each element in a collection |
| No index | Gives elements directly, not their position |
| Lists | `for (var item in list)` |
| Sets | `for (var item in set)` |
| Map keys | `for (var key in map.keys)` |
| Map entries | `for (var entry in map.entries)` |
