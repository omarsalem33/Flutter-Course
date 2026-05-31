# 23 — List Part 2: Adding, Removing & Searching

## 🎯 Learning Objectives
- Add and remove elements from Lists
- Search within Lists
- Sort and transform Lists

---

## ➕ Adding Elements

```dart
List<String> fruits = ["apple", "banana"];

// Add one item to the end
fruits.add("cherry");
print(fruits);  // [apple, banana, cherry]

// Add multiple items
fruits.addAll(["date", "elderberry"]);
print(fruits);  // [apple, banana, cherry, date, elderberry]

// Insert at specific index
fruits.insert(1, "avocado");
print(fruits);  // [apple, avocado, banana, cherry, date, elderberry]
```

---

## ➖ Removing Elements

```dart
List<String> fruits = ["apple", "banana", "cherry", "banana"];

// Remove first occurrence of a value
fruits.remove("banana");
print(fruits);  // [apple, cherry, banana]

// Remove by index
fruits.removeAt(0);
print(fruits);  // [cherry, banana]

// Remove last item
fruits.removeLast();
print(fruits);  // [cherry]

// Remove all items
fruits.clear();
print(fruits);  // []
```

---

## 🔍 Searching

```dart
List<String> names = ["Ahmed", "Sara", "Nour", "Ahmed"];

// Does it contain an item?
print(names.contains("Sara"));    // true
print(names.contains("Mona"));    // false

// Find the index
print(names.indexOf("Ahmed"));    // 0 (first occurrence)
print(names.lastIndexOf("Ahmed")); // 3 (last occurrence)

// -1 means not found
print(names.indexOf("Mona"));    // -1
```

---

## 🔃 Sorting

```dart
List<int> numbers = [3, 1, 4, 1, 5, 9, 2, 6];
numbers.sort();
print(numbers);  // [1, 1, 2, 3, 4, 5, 6, 9]

List<String> words = ["banana", "apple", "cherry"];
words.sort();
print(words);  // [apple, banana, cherry] (alphabetical)
```

---

## 🔄 Transforming Lists

```dart
List<int> numbers = [1, 2, 3, 4, 5];

// Map — transform each element
List<int> doubled = numbers.map((n) => n * 2).toList();
print(doubled);  // [2, 4, 6, 8, 10]

// Where — filter elements
List<int> evens = numbers.where((n) => n % 2 == 0).toList();
print(evens);    // [2, 4]

// Reduce — combine into single value
int sum = numbers.reduce((a, b) => a + b);
print(sum);      // 15
```

---

## ➡️ Next Lesson
[24 — List Part 3](../24_list_part3/)
