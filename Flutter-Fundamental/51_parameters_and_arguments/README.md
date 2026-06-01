# 51 — Parameters and Arguments

## 🎯 Learning Objectives
- Understand the difference between parameters and arguments
- Know how values are passed to functions
- Work with multiple arguments
- Understand pass-by-value behavior

---

## 📖 Parameters vs Arguments

| Term | Definition | Where |
|------|-----------|-------|
| **Parameter** | Variable in the function definition | In the function header |
| **Argument** | Actual value passed to the function | At the call site |

```dart
//              parameter ↓
void greet(String name) {
  print("Hello, $name!");
}

void main() {
  //        argument ↓
  greet("Omar");
}
```

---

## 🔄 Matching Parameters to Arguments

Arguments are matched to parameters **by position**:

```dart
void register(String name, String email, int age) {
  //          1st param     2nd param    3rd param
  print("Name: $name, Email: $email, Age: $age");
}

void main() {
  register("Omar", "omar@mail.com", 25);
  //       1st arg  2nd arg          3rd arg
}
```

---

## 📦 Pass by Value

Dart passes arguments **by value** — the function gets a **copy**:

```dart
void tryToChange(int number) {
  number = 999;  // only changes the local copy
  print("Inside: $number");  // 999
}

void main() {
  int x = 5;
  tryToChange(x);
  print("Outside: $x");  // 5 — unchanged!
}
```

---

## 📋 Arguments Can Be Expressions

You can pass any expression as an argument:

```dart
int add(int a, int b) => a + b;

void main() {
  // Literal values:
  print(add(3, 5));

  // Variables:
  int x = 10, y = 20;
  print(add(x, y));

  // Expressions:
  print(add(x + 1, y * 2));

  // Function calls:
  print(add(add(1, 2), add(3, 4)));  // add(3, 7) = 10
}
```

---

## 🔢 Number of Arguments Must Match

```dart
void showProfile(String name, int age, String city) {
  print("$name, $age, $city");
}

void main() {
  showProfile("Omar", 25, "Cairo");     // ✅ 3 arguments for 3 parameters

  // showProfile("Omar", 25);           // ❌ Error: missing 1 argument
  // showProfile("Omar", 25, "Cairo", "Egypt"); // ❌ Error: too many
}
```

---

## 🏷️ Descriptive Parameter Names

Good names make code self-documenting:

```dart
// ❌ Bad — unclear what a, b, c mean:
double calc(double a, double b, double c) {
  return a * b * (1 - c / 100);
}

// ✅ Good — clear and readable:
double calculateFinalPrice(double price, int quantity, double discountPercent) {
  return price * quantity * (1 - discountPercent / 100);
}
```

---

## 💡 Real-World Example

```dart
String createEmail(String firstName, String lastName, String domain) {
  String email = "${firstName.toLowerCase()}.${lastName.toLowerCase()}@$domain";
  return email;
}

void sendWelcomeMessage(String name, String email) {
  print("Dear $name,");
  print("Your account has been created with email: $email");
  print("Welcome aboard! 🎉");
}

void main() {
  String first = "Omar";
  String last = "Salem";

  String email = createEmail(first, last, "company.com");
  sendWelcomeMessage("$first $last", email);
}
```

---

## 📋 Summary

| Concept | Description |
|---------|-------------|
| Parameter | Variable in function definition |
| Argument | Value passed when calling |
| Position | Arguments match parameters by order |
| Count | Number of arguments must match parameters |
| Pass by value | Function gets a copy, original unchanged |
| Naming | Use descriptive parameter names |
