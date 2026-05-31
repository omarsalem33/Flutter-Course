# 40 — For Loop Part One

## 🎯 Learning Objectives
- Write a basic `for` loop
- Understand initialization, condition, and update
- Use the loop counter variable
- Print patterns using loops

---

## 📖 For Loop Syntax

```dart
for (initialization; condition; update) {
  // code to repeat
}
```

- **Initialization**: Runs once before the loop starts
- **Condition**: Checked before each iteration (loop continues if `true`)
- **Update**: Runs after each iteration

---

## ✅ Basic Example

```dart
for (int i = 0; i < 5; i++) {
  print("i = $i");
}
// Output:
// i = 0
// i = 1
// i = 2
// i = 3
// i = 4
```

### Step by Step:
1. `int i = 0` → initialize i to 0
2. `i < 5` → is 0 < 5? Yes → run body
3. Print "i = 0"
4. `i++` → i becomes 1
5. `i < 5` → is 1 < 5? Yes → run body
6. Print "i = 1"
7. ... continues until i = 5
8. `i < 5` → is 5 < 5? No → **loop ends**

---

## 🔢 Counting Examples

### Count from 1 to 10:
```dart
for (int i = 1; i <= 10; i++) {
  print(i);
}
```

### Count from 10 to 1 (countdown):
```dart
for (int i = 10; i >= 1; i--) {
  print(i);
}
print("Go! 🚀");
```

### Count by 2s:
```dart
for (int i = 0; i <= 20; i += 2) {
  print(i);  // 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20
}
```

### Count by 5s:
```dart
for (int i = 5; i <= 50; i += 5) {
  print(i);  // 5, 10, 15, 20, 25, 30, 35, 40, 45, 50
}
```

---

## 🧮 Accumulating Values

### Sum of numbers 1 to 10:
```dart
int sum = 0;

for (int i = 1; i <= 10; i++) {
  sum += i;
}

print("Sum = $sum");  // Sum = 55
```

### Factorial (5!):
```dart
int factorial = 1;

for (int i = 1; i <= 5; i++) {
  factorial *= i;
}

print("5! = $factorial");  // 5! = 120
```

---

## 📝 Using the Counter

The counter variable `i` can be used in calculations:

```dart
for (int i = 1; i <= 5; i++) {
  print("$i x $i = ${i * i}");
}
// 1 x 1 = 1
// 2 x 2 = 4
// 3 x 3 = 9
// 4 x 4 = 16
// 5 x 5 = 25
```

---

## 💡 Real-World Example

```dart
void main() {
  // Print a receipt for 5 items
  double pricePerItem = 49.99;

  print("=== Receipt ===");
  double total = 0;

  for (int i = 1; i <= 5; i++) {
    total += pricePerItem;
    print("Item $i: $pricePerItem EGP");
  }

  print("===============");
  print("Total: $total EGP");
}
```

---

## 📋 Summary

| Part | Example | Purpose |
|------|---------|---------|
| Init | `int i = 0` | Set start value |
| Condition | `i < 10` | When to stop |
| Update | `i++` | Change after each loop |
| `i++` | Increment by 1 | Count up |
| `i--` | Decrement by 1 | Count down |
| `i += 2` | Increment by 2 | Skip values |
