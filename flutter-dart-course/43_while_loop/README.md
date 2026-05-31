# 43 — While Loop

## 🎯 Learning Objectives
- Write a `while` loop
- Understand when to use `while` instead of `for`
- Avoid infinite loops
- Use `while` with user-like input scenarios

---

## 📖 While Loop Syntax

```dart
while (condition) {
  // code to repeat
  // update condition variable!
}
```

The condition is checked **before** each iteration. If `false` from the start, the loop body never runs.

---

## ✅ Basic Example

```dart
int count = 1;

while (count <= 5) {
  print("Count: $count");
  count++;  // Don't forget this!
}
// Count: 1
// Count: 2
// Count: 3
// Count: 4
// Count: 5
```

---

## 🆚 while vs. for

```dart
// for — when you know the count:
for (int i = 0; i < 5; i++) {
  print(i);
}

// while — when you don't know the count:
int number = 1024;
while (number > 1) {
  number ~/= 2;  // integer division
  print(number);
}
```

| Use `for` when | Use `while` when |
|----------------|------------------|
| You know how many times | You don't know how many times |
| Counting up/down | Waiting for a condition |
| Iterating over a range | Processing until done |

---

## 🔢 Counting Digits

```dart
int number = 123456;
int digitCount = 0;

while (number > 0) {
  number ~/= 10;
  digitCount++;
}

print("Number of digits: $digitCount");  // 6
```

---

## 🔄 Sum Until Condition

```dart
int sum = 0;
int i = 1;

while (sum < 100) {
  sum += i;
  i++;
}

print("Sum: $sum");       // Sum: 105
print("Last number: ${i - 1}");  // Last number: 14
```

---

## ⚠️ Avoiding Infinite Loops

```dart
// ❌ INFINITE LOOP — condition never becomes false:
// int x = 5;
// while (x > 0) {
//   print(x);
//   // Missing: x--;
// }

// ✅ CORRECT — condition eventually becomes false:
int x = 5;
while (x > 0) {
  print(x);
  x--;
}
```

> **Rule**: Always make sure the condition will eventually become `false`!

---

## 💡 Real-World Example

```dart
void main() {
  // ATM: keep withdrawing until balance is too low
  double balance = 1000.0;
  double withdrawal = 200.0;
  int transactions = 0;

  while (balance >= withdrawal) {
    balance -= withdrawal;
    transactions++;
    print("Withdrawal $transactions: -$withdrawal EGP (Balance: $balance)");
  }

  print("Cannot withdraw more. Final balance: $balance EGP");
  print("Total transactions: $transactions");
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `while` | Repeats while condition is `true` |
| Check | Condition is checked **before** each run |
| Zero runs | If condition is initially `false`, body never runs |
| Update | Must update the variable to avoid infinite loop |
