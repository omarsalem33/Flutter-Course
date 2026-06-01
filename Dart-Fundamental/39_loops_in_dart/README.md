# 39 — Loops in Dart

## 🎯 Learning Objectives
- Understand what loops are and why we need them
- Know the different types of loops in Dart
- Understand the concept of iteration
- Choose the right loop for each situation

---

## 📖 What Is a Loop?

A **loop** repeats a block of code multiple times.

Without loops:
```dart
print("Hello");
print("Hello");
print("Hello");
print("Hello");
print("Hello");
// 😫 Repetitive!
```

With loops:
```dart
for (int i = 0; i < 5; i++) {
  print("Hello");
}
// ✅ Clean and scalable!
```

---

## 🔄 Types of Loops in Dart

| Loop Type | Best For |
|-----------|----------|
| `for` | When you know how many times to repeat |
| `while` | When you repeat until a condition is false |
| `do-while` | Like while, but runs at least once |
| `for-in` | Iterating over a collection (List, Set) |
| `forEach` | Running a function on each item in a collection |

---

## 📊 Loop Anatomy

Every loop has three key parts:

1. **Initialization** — set the starting point
2. **Condition** — when to stop
3. **Update** — change something each time

```dart
// Initialization: int i = 0
// Condition:      i < 5
// Update:         i++

for (int i = 0; i < 5; i++) {
  print("Iteration $i");
}
```

---

## 🔑 Key Loop Concepts

### Counter
A variable that tracks how many times the loop has run:
```dart
for (int counter = 1; counter <= 3; counter++) {
  print("Count: $counter");
}
// Count: 1
// Count: 2
// Count: 3
```

### Infinite Loop
A loop that never stops (⚠️ avoid this!):
```dart
// ❌ DANGER — never do this:
// while (true) {
//   print("Forever!");
// }
```

### Break & Continue
- `break` — exit the loop immediately
- `continue` — skip to the next iteration

```dart
for (int i = 0; i < 10; i++) {
  if (i == 5) break;     // stop at 5
  if (i % 2 == 0) continue; // skip even numbers
  print(i);
}
// Output: 1, 3
```

---

## 💡 When to Use Each Loop

```dart
// ✅ for — known number of iterations:
for (int i = 0; i < 10; i++) { ... }

// ✅ while — unknown iterations, check condition first:
while (userInput != "quit") { ... }

// ✅ do-while — must run at least once:
do { ... } while (tries < 3);

// ✅ for-in — iterate over a collection:
for (var item in myList) { ... }

// ✅ forEach — apply a function to each item:
myList.forEach((item) => print(item));
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| Loop | Repeats code multiple times |
| Iteration | One pass through the loop body |
| Counter | Tracks loop progress |
| `break` | Exit loop immediately |
| `continue` | Skip current iteration |
| Infinite loop | A loop that never ends (avoid!) |
