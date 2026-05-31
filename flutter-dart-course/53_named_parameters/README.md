# 53 — Named Parameters

## 🎯 Learning Objectives
- Use named parameters with `{}`
- Make named parameters required with `required`
- Provide default values for named parameters
- Know when to use named vs positional parameters

---

## 📖 What Are Named Parameters?

Named parameters use **curly braces** `{}` and are passed by **name**, not position:

```dart
void greet({String? name, String? greeting}) {
  print("${greeting ?? "Hello"}, ${name ?? "Guest"}!");
}

void main() {
  greet(name: "Omar", greeting: "Welcome");
  greet(greeting: "Hi", name: "Sara");  // order doesn't matter!
  greet(name: "Ali");                    // greeting is optional
  greet();                               // both optional
}
```

---

## 🔑 required Keyword

Use `required` to make a named parameter mandatory:

```dart
void createUser({required String name, required String email, int age = 0}) {
  print("Name: $name");
  print("Email: $email");
  print("Age: $age");
}

void main() {
  createUser(name: "Omar", email: "omar@mail.com");        // ✅
  createUser(name: "Sara", email: "sara@mail.com", age: 22); // ✅

  // createUser(name: "Ali");  // ❌ Error: 'email' is required
}
```

---

## 📦 Default Values

```dart
void configure({
  String theme = "light",
  int fontSize = 16,
  String language = "en",
  bool notifications = true,
}) {
  print("Theme: $theme");
  print("Font: $fontSize");
  print("Language: $language");
  print("Notifications: $notifications");
}

void main() {
  configure();  // all defaults
  configure(theme: "dark", language: "ar");  // override some
  configure(fontSize: 20, notifications: false);  // override others
}
```

---

## 🆚 Positional vs Named Parameters

```dart
// Positional — order matters, hard to read with many params:
void pos(String name, int age, String city, bool active) {}
pos("Omar", 25, "Cairo", true);  // What does 25 mean? true?

// Named — self-documenting, order doesn't matter:
void named({required String name, required int age, String city = "", bool active = true}) {}
named(name: "Omar", age: 25, city: "Cairo", active: true);  // Clear!
```

| Feature | Positional `()` | Optional Positional `[]` | Named `{}` |
|---------|-----------------|-------------------------|------------|
| Order | Matters | Matters | Doesn't matter |
| Self-documenting | ❌ | ❌ | ✅ |
| Can skip | ❌ | Only at the end | ✅ Any |
| Default values | ❌ | ✅ | ✅ |
| `required` | Always required | Never | Optional |

---

## 🔄 Mixing Positional and Named

```dart
void sendMessage(String to, {required String body, String subject = "No Subject"}) {
  print("To: $to");
  print("Subject: $subject");
  print("Body: $body");
}

void main() {
  sendMessage("omar@mail.com", body: "Hello there!");
  sendMessage("sara@mail.com", body: "Meeting at 3pm", subject: "Reminder");
}
```

> **Rule**: Positional parameters come first, named parameters come after.

---

## 💡 Real-World Example

```dart
Map<String, dynamic> createProduct({
  required String name,
  required double price,
  String category = "General",
  int stock = 0,
  bool isAvailable = true,
  String? description,
}) {
  return {
    "name": name,
    "price": price,
    "category": category,
    "stock": stock,
    "isAvailable": isAvailable,
    "description": description ?? "No description",
  };
}

void printProduct(Map<String, dynamic> product) {
  product.forEach((key, value) {
    print("$key: $value");
  });
  print("---");
}

void main() {
  var laptop = createProduct(
    name: "Laptop",
    price: 15000,
    category: "Electronics",
    stock: 50,
    description: "High-performance laptop",
  );

  var shirt = createProduct(
    name: "T-Shirt",
    price: 250,
    stock: 200,
  );

  printProduct(laptop);
  printProduct(shirt);
}
```

---

## 📋 Summary

| Concept | Syntax | Description |
|---------|--------|-------------|
| Named params | `{int? x}` | Passed by name |
| Required named | `{required int x}` | Must be provided |
| Default value | `{int x = 5}` | Fallback if not provided |
| Calling | `func(x: 5)` | Use `name: value` syntax |
| Order | Doesn't matter | Can pass in any order |
| Mix | `func(int pos, {int? named})` | Positional first, named last |
