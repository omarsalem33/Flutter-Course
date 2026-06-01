# 34 — Nested If

## 🎯 Learning Objectives
- Understand what nested `if` statements are
- Write `if` statements inside other `if` statements
- Know when to use nesting vs. `&&`
- Avoid excessive nesting

---

## 📖 What Is a Nested If?

A **nested if** is an `if` statement inside another `if` statement:

```dart
if (outerCondition) {
  if (innerCondition) {
    // runs only if BOTH conditions are true
  }
}
```

---

## ✅ Basic Example

```dart
int age = 20;
bool hasLicense = true;

if (age >= 18) {
  print("You are old enough");

  if (hasLicense) {
    print("You can drive! 🚗");
  } else {
    print("You need to get a license first");
  }
} else {
  print("You are too young to drive");
}
```

---

## 🆚 Nested If vs. && Operator

These two produce the **same result**:

```dart
// Using nested if:
if (age >= 18) {
  if (hasLicense) {
    print("Can drive");
  }
}

// Using && operator:
if (age >= 18 && hasLicense) {
  print("Can drive");
}
```

> Use **nested if** when you need **different messages** for each level.
> Use **&&** when you only care about the **combined result**.

---

## 🏢 Multi-Level Nesting

```dart
String role = "admin";
bool isActive = true;
bool has2FA = true;

if (role == "admin") {
  print("Admin detected");

  if (isActive) {
    print("Account is active");

    if (has2FA) {
      print("Full access granted! 🔓");
    } else {
      print("Please enable 2FA first");
    }
  } else {
    print("Account is deactivated");
  }
} else {
  print("Regular user access");
}
```

---

## ⚠️ Avoid Deep Nesting

Too many levels make code hard to read:

```dart
// ❌ BAD — too deeply nested
if (a) {
  if (b) {
    if (c) {
      if (d) {
        print("Too deep!");
      }
    }
  }
}

// ✅ BETTER — use && to flatten
if (a && b && c && d) {
  print("Much cleaner!");
}
```

> **Rule of thumb**: Try to keep nesting to 2-3 levels maximum.

---

## 💡 Real-World Example

```dart
void main() {
  double orderTotal = 350.0;
  bool isMember = true;
  bool hasCoupon = true;

  double discount = 0;

  if (orderTotal >= 200) {
    discount = 10; // 10% base discount

    if (isMember) {
      discount += 5; // extra 5% for members

      if (hasCoupon) {
        discount += 3; // extra 3% with coupon
      }
    }
  }

  double finalPrice = orderTotal * (1 - discount / 100);
  print("Original: $orderTotal EGP");
  print("Discount: $discount%");
  print("Final: $finalPrice EGP");
}
```

---

## 📋 Summary

| Concept | When to Use |
|---------|-------------|
| Nested if | When each level needs its own response |
| `&&` operator | When you only need the combined check |
| Max depth | Keep nesting to 2-3 levels |
