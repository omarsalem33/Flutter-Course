# 37 — Null Safety Part One

## 🎯 Learning Objectives
- Understand what `null` means in Dart
- Know the difference between nullable and non-nullable types
- Declare nullable variables with `?`
- Check for null before using a value

---

## 📖 What Is Null?

`null` means **no value** — the variable is empty.

```dart
// In real life:
// A form field left blank → null
// A user with no phone number → null
// A search with no results → null
```

---

## 🛡️ Dart's Null Safety

Dart has **null safety** — by default, variables **cannot** be null:

```dart
int age = 25;     // ✅ Has a value
// int age = null; // ❌ Error! int cannot be null
```

This prevents the **"null reference error"** — one of the most common bugs in programming.

---

## ❓ Nullable Types (?)

Add `?` after the type to allow null:

```dart
int? age = 25;       // ✅ Can hold an int
age = null;          // ✅ Can also be null

String? name = null; // ✅ Nullable String
double? price;       // ✅ Defaults to null (no value assigned)

print(age);    // null
print(name);   // null
print(price);  // null
```

---

## 🆚 Nullable vs Non-Nullable

```dart
// Non-nullable — MUST have a value:
int count = 0;
String name = "Omar";

// Nullable — CAN be null:
int? count2 = null;
String? name2;  // automatically null
```

| Type | Can be null? | Example |
|------|-------------|---------|
| `int` | ❌ No | `int x = 5;` |
| `int?` | ✅ Yes | `int? x = null;` |
| `String` | ❌ No | `String s = "hi";` |
| `String?` | ✅ Yes | `String? s;` |

---

## 🔍 Checking for Null

Before using a nullable value, check if it's null:

```dart
String? username;

if (username != null) {
  print("Hello, $username!");
} else {
  print("No username provided");
}
```

```dart
int? score;

if (score == null) {
  print("Score not available");
} else {
  print("Your score is $score");
}
```

---

## ⚠️ Why You Can't Use Nullable Directly

```dart
int? a = 5;
int? b = 3;

// int sum = a + b;  // ❌ Error! a and b might be null

// ✅ Check first:
if (a != null && b != null) {
  int sum = a + b;
  print(sum);
}
```

---

## 💡 Real-World Example

```dart
void main() {
  String? middleName;
  String firstName = "Omar";
  String lastName = "Salem";

  // Not everyone has a middle name
  if (middleName != null) {
    print("Full name: $firstName $middleName $lastName");
  } else {
    print("Full name: $firstName $lastName");
  }

  // Phone number might not be provided
  String? phone;
  print(phone == null ? "No phone on file" : "Phone: $phone");
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| `null` | Means "no value" |
| `Type` | Cannot be null (non-nullable) |
| `Type?` | Can be null (nullable) |
| Null check | Use `if (x != null)` before using |
| Default | Uninitialized nullable variables are `null` |
