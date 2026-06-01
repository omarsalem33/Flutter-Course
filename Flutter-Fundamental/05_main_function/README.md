# 05 — Main Function

## 🎯 Learning Objectives
- Understand the role of the `main()` function
- Know why every Dart program needs a `main()` function
- Write and run your first Dart program

---

## 📖 Explanation

### The Entry Point

Every Dart program **must** have a `main()` function. This is where your program **starts executing**. When you run a Dart file, the computer looks for `main()` and begins there.

Think of `main()` as the **front door** of your program. No matter how many rooms (functions) your house (program) has, everyone enters through the front door.

---

## 🔑 Syntax

```dart
void main() {
  // Your code goes here
}
```

Let's break it down:

| Part | Meaning |
|------|---------|
| `void` | This function returns **nothing** (no output value) |
| `main` | The special name Dart looks for to start the program |
| `()` | Parentheses for parameters (empty = no parameters needed) |
| `{ }` | Curly braces define the **body** of the function |

---

## 📝 Your First Dart Program

```dart
void main() {
  print("Hello, World!");
}
```

**Output:**
```
Hello, World!
```

---

## 🔬 How It Works

```
You run: dart main.dart
       ↓
Dart looks for: void main()
       ↓
Dart executes everything inside { }
       ↓
Program ends
```

---

## ⚠️ Common Mistakes

### Mistake 1 — Missing main()
```dart
// ❌ ERROR: No main function
print("Hello");
```

### Mistake 2 — Wrong name
```dart
// ❌ ERROR: Must be lowercase 'main'
void Main() { }
void MAIN() { }
```

### Mistake 3 — Missing curly braces
```dart
// ❌ ERROR: Missing body
void main()
  print("Hello");
```

### Correct ✅
```dart
void main() {
  print("Hello, World!");
}
```

---

## 🧠 Fun Fact

In Dart, `main()` can also accept command-line arguments:
```dart
void main(List<String> args) {
  print("Arguments: $args");
}
```
We'll cover this in advanced lessons!

---

## ➡️ Next Lesson
[06 — Print Statement](../06_print_statement/)
