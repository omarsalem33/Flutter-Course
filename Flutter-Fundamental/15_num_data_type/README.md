# 15 — num Data Type

## 🎯 Learning Objectives
- Understand when to use `num` instead of `int` or `double`
- Use `num` for flexible numeric operations

---

## 📖 What is num?

`num` is the **parent type** of both `int` and `double`. Use it when a variable might hold either a whole number or a decimal.

```dart
num a = 5;       // acts like int
num b = 3.14;    // acts like double
```

---

## 🤔 When to Use num?

```dart
// When you dont know if input will be int or double:
num temperature = getTemperature();  // might be 20 or 20.5

// When you want flexibility:
num score = 95;     // starts as int
score = 95.5;       // now its a double — still works!
```

---

## 🔧 num Operations

```dart
num x = 10;
num y = 3;

print(x + y);    // 13
print(x - y);    // 7
print(x * y);    // 30
print(x / y);    // 3.3333... (always returns double!)

// num inherits all int and double methods:
print(x.abs());
print(x.toString());
```

---

## 🆚 num vs int vs double

| Type | Holds | Use when |
|------|-------|----------|
| `int` | Whole numbers only | Ages, counts, years |
| `double` | Decimals only | Prices, measurements |
| `num` | Either | Unknown or flexible |

---

## ➡️ Next Lesson
[16 — bool Data Type](../16_bool_data_type/)
