# 52 — Optional Parameters

## 🎯 Learning Objectives
- Use optional positional parameters with `[]`
- Provide default values for optional parameters
- Know when to make parameters optional
- Understand the difference between required and optional

---

## 📖 What Are Optional Parameters?

Parameters that the caller **doesn't have to provide**. They use **square brackets** `[]`:

```dart
void greet(String name, [String? greeting]) {
  print("${greeting ?? "Hello"}, $name!");
}

void main() {
  greet("Omar");              // Hello, Omar!
  greet("Omar", "Welcome");  // Welcome, Omar!
}
```

---

## 📦 Optional with Default Values

Use `=` to set a default value:

```dart
void greet(String name, [String greeting = "Hello"]) {
  print("$greeting, $name!");
}

void main() {
  greet("Omar");              // Hello, Omar!
  greet("Omar", "Ahlan");    // Ahlan, Omar!
}
```

---

## 🔢 Multiple Optional Parameters

```dart
void createProfile(String name, [int age = 0, String city = "Unknown"]) {
  print("Name: $name");
  print("Age: ${age == 0 ? "Not specified" : age}");
  print("City: $city");
}

void main() {
  createProfile("Omar");                   // only name
  createProfile("Omar", 25);              // name + age
  createProfile("Omar", 25, "Cairo");     // name + age + city
}
```

---

## ⚠️ Rules for Optional Parameters

1. Optional parameters come **after** required parameters:
```dart
// ✅ Correct:
void func(String required, [int? optional]) {}

// ❌ Wrong:
// void func([int? optional], String required) {}
```

2. Optional parameters must be filled **in order**:
```dart
void test(String a, [String b = "B", String c = "C"]) {
  print("$a, $b, $c");
}

test("A");           // A, B, C
test("A", "X");      // A, X, C
test("A", "X", "Y"); // A, X, Y

// ❌ Can't skip b and only provide c:
// test("A", , "Y");  // Error!
```

---

## 🆚 Nullable vs Default Value

```dart
// Nullable — might be null:
void func1(String name, [String? title]) {
  if (title != null) {
    print("$title $name");
  } else {
    print(name);
  }
}

// Default value — always has a value:
void func2(String name, [String title = "Mr."]) {
  print("$title $name");
}
```

---

## 💡 Real-World Example

```dart
double calculatePrice(
  double basePrice, [
  double taxRate = 14.0,
  double discountPercent = 0.0,
  int quantity = 1,
]) {
  double subtotal = basePrice * quantity;
  double discount = subtotal * discountPercent / 100;
  double afterDiscount = subtotal - discount;
  double tax = afterDiscount * taxRate / 100;
  return afterDiscount + tax;
}

void main() {
  // Use all defaults:
  print(calculatePrice(100));              // 100 + 14% tax = 114.0

  // Custom tax rate:
  print(calculatePrice(100, 10));          // 100 + 10% tax = 110.0

  // Custom tax + discount:
  print(calculatePrice(100, 14, 20));      // 80 + 14% tax = 91.2

  // All custom:
  print(calculatePrice(100, 14, 10, 3));   // 270 + 14% tax = 307.8
}
```

---

## 📋 Summary

| Concept | Syntax | Description |
|---------|--------|-------------|
| Required | `(int x)` | Must be provided |
| Optional | `([int? x])` | Can be omitted (null) |
| Default | `([int x = 5])` | Has a fallback value |
| Order | Required first, optional last | Required params come before `[]` |
| Fill order | Left to right | Can't skip optional params |
