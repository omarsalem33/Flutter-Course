# 10 — Variables Part 3: Nullable Variables & Late

## 🎯 Learning Objectives
- Understand null safety in Dart
- Declare nullable variables using `?`
- Use the `late` keyword correctly
- Use null-aware operators

---

## 📖 What is Null?

`null` means **"no value"** or **"empty"**. In Dart, variables cannot be null by default — this is called **null safety**, and it's one of Dart's most important features.

```dart
String name = null;  // ❌ ERROR in Dart (null safety is on)
String name = "";    // ✅ Empty string (has a value)
```

---

## ❓ Nullable Variables (`?`)

To allow a variable to hold `null`, add `?` after the type:

```dart
String? nickname;        // Can be null or a String
int? favoriteNumber;     // Can be null or an int
double? weight;          // Can be null or a double
```

```dart
void main() {
  String? nickname = null;   // OK — it's nullable
  print(nickname);           // Output: null

  nickname = "Hamada";       // Now it has a value
  print(nickname);           // Output: Hamada
}
```

---

## 🔐 Non-Nullable (Default)

Without `?`, a variable **must** have a value:
```dart
String name;           // ❌ ERROR: Must be initialized
String name = "Ali";  // ✅ Always has a value
```

---

## ⏰ Late Variables (`late`)

`late` tells Dart: "I promise this variable will have a value before I use it."

```dart
late String studentName;   // Not initialized yet

void setup() {
  studentName = "Nour";    // Initialize before use
}

void main() {
  setup();
  print(studentName);  // ✅ Works because we called setup() first
}
```

### When to use `late`?
- When the value comes from a method that runs later
- When you can guarantee it will be initialized before use
- When circular dependencies prevent early initialization

---

## 🛡️ Null-Aware Operators

### `??` — Null coalescing (provide a default)
```dart
String? name = null;
print(name ?? "Guest");   // Output: Guest
// If name is null, use "Guest"
```

### `?.` — Null-safe member access
```dart
String? message = null;
print(message?.length);   // Output: null (doesn't crash!)
// If message is null, don't call .length — just return null
```

### `!` — Null assertion (use carefully!)
```dart
String? name = "Ahmed";
print(name!.length);   // ✅ You're asserting it's not null
// WARNING: If name IS null, this will crash!
```

---

## 📊 Summary Table

| Syntax | Meaning | Example |
|--------|---------|---------|
| `String name` | Cannot be null | `String name = "Ali"` |
| `String? name` | Can be null | `String? name = null` |
| `late String name` | Will be set later | `late String name` |
| `name ?? "default"` | Use default if null | `name ?? "Guest"` |
| `name?.method()` | Call only if not null | `name?.toUpperCase()` |

---

## ➡️ Next Lesson
[11 — Data Types](../11_data_types/)
