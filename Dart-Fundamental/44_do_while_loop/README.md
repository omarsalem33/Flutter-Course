# 44 — Do While Loop

## 🎯 Learning Objectives
- Write a `do-while` loop
- Understand the difference between `while` and `do-while`
- Know when to use `do-while`
- Practice with menu-driven programs

---

## 📖 Do-While Syntax

```dart
do {
  // code to repeat (runs at least once!)
} while (condition);
```

> **Key difference**: The body runs **first**, then the condition is checked.

---

## ✅ Basic Example

```dart
int count = 1;

do {
  print("Count: $count");
  count++;
} while (count <= 5);

// Output:
// Count: 1
// Count: 2
// Count: 3
// Count: 4
// Count: 5
```

---

## 🆚 while vs. do-while

The key difference shows when the condition is **initially false**:

```dart
// while — body NEVER runs:
int x = 10;
while (x < 5) {
  print("while: $x");  // Never prints!
}

// do-while — body runs ONCE:
int y = 10;
do {
  print("do-while: $y");  // Prints once!
} while (y < 5);

// Output: do-while: 10
```

| Feature | while | do-while |
|---------|-------|----------|
| Check | Before body | After body |
| Minimum runs | 0 times | **1 time** |
| Use when | Might not need to run | Must run at least once |

---

## 📋 Menu System Example

`do-while` is perfect for menus — show the menu at least once:

```dart
void main() {
  int choice = 0;

  do {
    print("\n=== Menu ===");
    print("1. View Balance");
    print("2. Deposit");
    print("3. Withdraw");
    print("4. Exit");

    choice = 2;  // Simulated user input

    switch (choice) {
      case 1:
        print("Balance: 5000 EGP");
        break;
      case 2:
        print("Deposited 1000 EGP");
        break;
      case 3:
        print("Withdrew 500 EGP");
        break;
      case 4:
        print("Goodbye! 👋");
        break;
      default:
        print("Invalid choice!");
    }

    // For demonstration, exit after one iteration
    choice = 4;
  } while (choice != 4);
}
```

---

## 🔄 Validation Example

Ensure input meets criteria (runs at least once):

```dart
int password = 0;
int attempts = 0;

do {
  // Simulated password attempts
  List<int> tries = [1111, 9999, 1234];
  password = tries[attempts];
  attempts++;
  
  if (password != 1234) {
    print("Wrong password! Try again.");
  }
} while (password != 1234 && attempts < 3);

if (password == 1234) {
  print("Access granted! ✅");
} else {
  print("Account locked! 🔒");
}
```

---

## 💡 Real-World Example

```dart
void main() {
  // Dice rolling — roll until you get a 6
  List<int> rolls = [2, 4, 1, 3, 6, 5, 2];  // simulated rolls
  int rollIndex = 0;
  int dice;

  do {
    dice = rolls[rollIndex];
    print("Roll ${rollIndex + 1}: $dice");
    rollIndex++;
  } while (dice != 6 && rollIndex < rolls.length);

  if (dice == 6) {
    print("Got a 6! 🎲 (took $rollIndex rolls)");
  } else {
    print("Never got a 6 in ${rolls.length} rolls");
  }
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `do-while` | Runs body first, then checks condition |
| Minimum runs | Always runs **at least once** |
| Best for | Menus, validation, retry logic |
| Semicolon | Don't forget `;` after `while(condition);` |
