# 41 — For Loop Part Two

## 🎯 Learning Objectives
- Use `break` and `continue` in for loops
- Work with nested for loops
- Access list elements using index
- Use loops with conditions

---

## 📖 break — Exit the Loop Early

`break` immediately stops the loop:

```dart
for (int i = 1; i <= 10; i++) {
  if (i == 6) {
    break;  // stop at 6
  }
  print(i);
}
// Output: 1, 2, 3, 4, 5
```

### Finding an element:
```dart
List<String> names = ["Ali", "Omar", "Sara", "Nour"];

for (int i = 0; i < names.length; i++) {
  if (names[i] == "Sara") {
    print("Found Sara at index $i!");
    break;
  }
}
```

---

## ⏭️ continue — Skip Current Iteration

`continue` skips the rest of the current iteration:

```dart
for (int i = 1; i <= 10; i++) {
  if (i % 3 == 0) {
    continue;  // skip multiples of 3
  }
  print(i);
}
// Output: 1, 2, 4, 5, 7, 8, 10
```

---

## 🔲 Nested For Loops

A loop inside another loop:

```dart
for (int i = 1; i <= 3; i++) {
  for (int j = 1; j <= 3; j++) {
    print("i=$i, j=$j");
  }
}
// i=1,j=1  i=1,j=2  i=1,j=3
// i=2,j=1  i=2,j=2  i=2,j=3
// i=3,j=1  i=3,j=2  i=3,j=3
```

### Multiplication Table:
```dart
for (int i = 1; i <= 5; i++) {
  String row = "";
  for (int j = 1; j <= 5; j++) {
    row += "${i * j}\t";
  }
  print(row);
}
```

---

## 📋 Looping Through a List by Index

```dart
List<String> fruits = ["Apple", "Banana", "Cherry", "Date"];

for (int i = 0; i < fruits.length; i++) {
  print("$i: ${fruits[i]}");
}
// 0: Apple
// 1: Banana
// 2: Cherry
// 3: Date
```

### Reverse iteration:
```dart
for (int i = fruits.length - 1; i >= 0; i--) {
  print("$i: ${fruits[i]}");
}
```

---

## 🔄 Loop with Conditions

```dart
List<int> numbers = [12, 45, 7, 23, 56, 89, 34];

int maxValue = numbers[0];

for (int i = 1; i < numbers.length; i++) {
  if (numbers[i] > maxValue) {
    maxValue = numbers[i];
  }
}

print("Maximum: $maxValue");  // Maximum: 89
```

---

## 💡 Real-World Example

```dart
void main() {
  List<Map<String, dynamic>> products = [
    {"name": "Laptop", "price": 15000, "inStock": true},
    {"name": "Phone", "price": 8000, "inStock": false},
    {"name": "Tablet", "price": 5000, "inStock": true},
    {"name": "Watch", "price": 3000, "inStock": true},
  ];

  print("Available products:");
  for (int i = 0; i < products.length; i++) {
    if (!products[i]["inStock"]) continue;
    print("${i + 1}. ${products[i]["name"]} - ${products[i]["price"]} EGP");
  }
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `break` | Exit loop immediately |
| `continue` | Skip to next iteration |
| Nested loops | Loop inside another loop |
| `list[i]` | Access element by index |
| `list.length` | Number of elements in list |
