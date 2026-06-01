# 24 — List Part 3: Spread, Looping & Nested Lists

## 🎯 Learning Objectives
- Loop through Lists using `for` and `forEach`
- Use the spread operator
- Create and access nested Lists

---

## 🔄 Iterating with for loop

```dart
List<String> fruits = ["apple", "banana", "cherry"];

// Classic for loop (with index)
for (int i = 0; i < fruits.length; i++) {
  print("${i + 1}. ${fruits[i]}");
}
// Output:
// 1. apple
// 2. banana
// 3. cherry

// For-in loop (simpler, no index needed)
for (String fruit in fruits) {
  print(fruit);
}
```

---

## 🔁 forEach Method

```dart
List<int> scores = [90, 85, 92];

scores.forEach((score) {
  print("Score: $score");
});

// Shorthand with arrow function:
scores.forEach((s) => print("Score: $s"));
```

---

## 🌐 Spread Operator (`...`)

The spread operator `...` expands a list into individual elements:

```dart
List<int> a = [1, 2, 3];
List<int> b = [4, 5, 6];

// Combine lists:
List<int> combined = [...a, ...b];
print(combined);  // [1, 2, 3, 4, 5, 6]

// Add elements around:
List<int> extended = [0, ...a, ...b, 7];
print(extended);  // [0, 1, 2, 3, 4, 5, 6, 7]
```

---

## 📋 Nested Lists (2D Lists)

A List can contain other Lists — useful for grids and tables:

```dart
List<List<int>> matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
];

// Access: matrix[row][column]
print(matrix[0][0]);  // 1 (row 0, col 0)
print(matrix[1][2]);  // 6 (row 1, col 2)
print(matrix[2][1]);  // 8 (row 2, col 1)

// Loop through all elements:
for (var row in matrix) {
  for (var element in row) {
    print(element);
  }
}
```

---

## 🔗 List with if and for inside (Collection if/for)

Dart allows conditions and loops inside List literals:

```dart
bool includeBonus = true;
List<int> scores = [
  90,
  85,
  if (includeBonus) 100,  // only added if true
];
print(scores);  // [90, 85, 100]

// Collection for:
List<int> doubled = [
  for (int i = 1; i <= 5; i++) i * 2
];
print(doubled);  // [2, 4, 6, 8, 10]
```

---

## ➡️ Next Lesson
[25 — Set Data Type](../25_set_data_type/)
