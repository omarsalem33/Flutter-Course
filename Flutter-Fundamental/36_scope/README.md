# 36 — Scope

## 🎯 Learning Objectives
- Understand what scope means in Dart
- Know the difference between local and global scope
- Understand block scope with `{}`
- Avoid common scope-related mistakes

---

## 📖 What Is Scope?

**Scope** determines **where a variable can be accessed** in your code.
A variable only exists within the block `{}` where it was declared.

```dart
void main() {
  int x = 10;  // x exists inside main
  print(x);    // ✅ Works
}
// print(x);   // ❌ Error — x doesn't exist here
```

---

## 🏠 Local Scope

Variables declared inside a block `{}` are **local** to that block:

```dart
void main() {
  if (true) {
    int secret = 42;
    print(secret);  // ✅ Works — inside the block
  }

  // print(secret); // ❌ Error — secret doesn't exist here
}
```

---

## 🌍 Outer Scope Access

Inner blocks **can access** variables from outer blocks:

```dart
void main() {
  String name = "Omar";  // declared in main scope

  if (true) {
    print(name);  // ✅ Works — inner block can see outer variables
  }
}
```

But **NOT the reverse**:

```dart
void main() {
  if (true) {
    int innerValue = 100;
  }

  // print(innerValue);  // ❌ Error — outer can't see inner variables
}
```

---

## 🔲 Block Scope with if/else

Each `if`, `else if`, and `else` block has its own scope:

```dart
void main() {
  int score = 85;

  if (score >= 80) {
    String grade = "A";
    print("Grade: $grade");  // ✅ Works
  } else {
    String grade = "F";
    print("Grade: $grade");  // ✅ Works (different variable!)
  }

  // print(grade);  // ❌ Error — grade doesn't exist here
}
```

To use a variable **after** the if-else, declare it **before**:

```dart
void main() {
  int score = 85;
  String grade;  // declared in outer scope

  if (score >= 80) {
    grade = "A";
  } else {
    grade = "F";
  }

  print("Grade: $grade");  // ✅ Works — grade is in outer scope
}
```

---

## 🔄 Variable Shadowing

An inner variable can have the **same name** as an outer one:

```dart
void main() {
  int x = 10;  // outer x
  print("Outer x: $x");  // 10

  if (true) {
    int x = 20;  // inner x (shadows outer)
    print("Inner x: $x");  // 20
  }

  print("Outer x again: $x");  // 10 (unchanged)
}
```

> ⚠️ Avoid shadowing — it makes code confusing!

---

## 💡 Real-World Example

```dart
void main() {
  double totalPrice = 0;
  int itemCount = 3;

  for (int i = 0; i < itemCount; i++) {
    double itemPrice = 50.0;  // local to the loop
    totalPrice += itemPrice;  // modifies the outer variable
  }

  print("Total: $totalPrice EGP");  // ✅ Works
  // print(itemPrice);              // ❌ Error — itemPrice is local to loop
  // print(i);                      // ❌ Error — i is local to loop
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| Scope | Where a variable is accessible |
| Local scope | Variable exists only in its `{}` block |
| Outer access | Inner blocks can see outer variables |
| Inner access | Outer blocks **cannot** see inner variables |
| Shadowing | Inner variable hides outer one with same name |
