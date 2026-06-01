# 38 — Null Safety Part Two

## 🎯 Learning Objectives
- Use the null-aware operator `??`
- Use the null-aware assignment `??=`
- Use the bang operator `!`
- Use the null-aware access operator `?.`

---

## 📖 Null-Aware Operator (??)

Provides a **default value** when something is null:

```dart
String? name;
String displayName = name ?? "Guest";
print(displayName);  // Guest

String? name2 = "Omar";
String displayName2 = name2 ?? "Guest";
print(displayName2);  // Omar
```

> Read `??` as: "if null, use this instead"

---

## 📝 Null-Aware Assignment (??=)

Assigns a value **only if** the variable is currently null:

```dart
String? username;
print(username);  // null

username ??= "Anonymous";
print(username);  // Anonymous

username ??= "NewName";  // NOT assigned — username already has a value
print(username);  // Anonymous
```

---

## ❗ Bang Operator (!)

Tells Dart: "I'm sure this is **NOT null**":

```dart
String? name = "Omar";
String definitelyName = name!;  // ✅ Works — name is not null
print(definitelyName);  // Omar
```

> ⚠️ **Warning**: If the value IS null, it throws an error at runtime!

```dart
String? name;
// String definitelyName = name!;  // ❌ Runtime Error!
```

> Only use `!` when you are **100% certain** the value is not null.

---

## 🔗 Null-Aware Access (?.)

Safely access a property or method — returns `null` instead of crashing:

```dart
String? name = "Omar";
print(name?.length);    // 4

String? name2;
print(name2?.length);   // null (no error!)

// Without ?. → would crash:
// print(name2.length);  // ❌ Error!
```

---

## 🔗 Chaining Null-Aware Operators

```dart
String? name;

// Get the length, or 0 if name is null:
int nameLength = name?.length ?? 0;
print(nameLength);  // 0

// Convert to uppercase if not null:
String? upper = name?.toUpperCase();
print(upper);  // null
```

---

## 🆚 Comparison of Null-Aware Operators

| Operator | Name | What It Does |
|----------|------|-------------|
| `??` | Null-aware | Provide a default value |
| `??=` | Null-aware assignment | Assign only if null |
| `!` | Bang / null assertion | Assert non-null (risky!) |
| `?.` | Null-aware access | Access member safely |

---

## 💡 Real-World Example

```dart
void main() {
  // User settings with defaults
  String? theme;
  String? language;
  int? fontSize;

  // Apply defaults using ??
  String activeTheme = theme ?? "light";
  String activeLang = language ?? "en";
  int activeFontSize = fontSize ?? 16;

  print("Theme: $activeTheme");
  print("Language: $activeLang");
  print("Font size: $activeFontSize");

  // Assign defaults using ??=
  theme ??= "light";
  language ??= "en";
  fontSize ??= 16;

  // Safe access
  String? email = "omar@example.com";
  print("Email length: ${email?.length ?? 0}");

  String? phone;
  print("Phone length: ${phone?.length ?? 0}");
}
```

---

## 📋 Summary

| Operator | Example | Description |
|----------|---------|-------------|
| `??` | `name ?? "Guest"` | Default if null |
| `??=` | `name ??= "Guest"` | Assign if null |
| `!` | `name!` | Assert not null (can crash!) |
| `?.` | `name?.length` | Safe member access |
