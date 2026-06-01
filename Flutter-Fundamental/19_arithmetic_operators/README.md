# 19 — Arithmetic Operators

## 🎯 Learning Objectives
- Use all arithmetic operators in Dart
- Understand operator precedence
- Apply compound assignment operators

---

## 📖 Arithmetic Operators

| Operator | Name | Example | Result |
|----------|------|---------|--------|
| `+` | Addition | `5 + 3` | `8` |
| `-` | Subtraction | `5 - 3` | `2` |
| `*` | Multiplication | `5 * 3` | `15` |
| `/` | Division | `5 / 2` | `2.5` (always double) |
| `~/` | Integer Division | `5 ~/ 2` | `2` (drops decimal) |
| `%` | Modulo (remainder) | `5 % 2` | `1` |

---

## 📝 Examples

```dart
void main() {
  int a = 10;
  int b = 3;

  print(a + b);    // 13
  print(a - b);    // 7
  print(a * b);    // 30
  print(a / b);    // 3.3333333333333335
  print(a ~/ b);   // 3
  print(a % b);    // 1
}
```

---

## 📊 Operator Precedence

Like in math, some operators run before others:
```
1. ()   — parentheses first
2. * / ~/ %  — multiplication and division
3. + -  — addition and subtraction
```

```dart
print(2 + 3 * 4);      // 14 (not 20! — * first)
print((2 + 3) * 4);    // 20 (parentheses first)
```

---

## ➕ Increment & Decrement

```dart
int x = 5;

x++;    // same as x = x + 1
print(x);   // 6

x--;    // same as x = x - 1
print(x);   // 5

// Pre vs Post increment:
int a = 5;
print(a++);   // 5 (prints THEN increments)
print(a);     // 6

int b = 5;
print(++b);   // 6 (increments THEN prints)
print(b);     // 6
```

---

## 🔄 Compound Assignment Operators

```dart
int score = 100;

score += 10;    // score = score + 10  → 110
score -= 5;     // score = score - 5   → 105
score *= 2;     // score = score * 2   → 210
score ~/= 3;    // score = score ~/ 3  → 70
score %= 8;     // score = score % 8   → 6
```

---

## 💡 Real-World Uses

```dart
// Modulo — check even/odd
int num = 7;
if (num % 2 == 0) {
  print("Even");
} else {
  print("Odd");   // Output: Odd
}

// Integer division — convert minutes to hours
int totalMinutes = 137;
int hours = totalMinutes ~/ 60;   // 2
int minutes = totalMinutes % 60;  // 17
print("$hours hours and $minutes minutes");
```

---

## ➡️ Next Lesson
[20 — Dot Operator](../20_dot_operator/)
