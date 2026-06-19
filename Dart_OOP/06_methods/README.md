# 06 — Methods

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand what methods are in OOP
- Define methods inside a class
- Call methods on objects
- Use methods with parameters and return values
- Understand `this` keyword

---

## 📖 What is a Method?

A **method** is a function that belongs to a class. It defines the **behavior** (actions) that an object can perform.

```
┌────────────────────────────────────┐
│          Class: Car                │
├────────────────────────────────────┤
│  Attributes (data):               │
│    - brand, speed, fuel            │
├────────────────────────────────────┤
│  Methods (behavior):              │
│    - start()        ← actions!    │
│    - accelerate()                  │
│    - brake()                       │
│    - refuel()                      │
└────────────────────────────────────┘
```

**Attributes** = what the object **HAS**
**Methods** = what the object **DOES**

---

## 🔧 Defining a Method

### Basic Syntax
```dart
class ClassName {
  // Method with no parameters, no return value
  void methodName() {
    // code
  }
}
```

### Simple Example
```dart
class Dog {
  String name = "Rex";

  void bark() {
    print("$name says: Woof! Woof!");
  }

  void sit() {
    print("$name sits down.");
  }
}

void main() {
  Dog myDog = Dog();
  myDog.bark(); // Output: Rex says: Woof! Woof!
  myDog.sit();  // Output: Rex sits down.
}
```

---

## 📝 Methods with Parameters

Methods can accept **parameters** (input data):

```dart
class Calculator {
  void add(int a, int b) {
    print("$a + $b = ${a + b}");
  }

  void multiply(int a, int b) {
    print("$a × $b = ${a * b}");
  }

  void greet(String name) {
    print("Hello, $name! Welcome to Calculator.");
  }
}

void main() {
  Calculator calc = Calculator();
  calc.add(5, 3);        // Output: 5 + 3 = 8
  calc.multiply(4, 7);   // Output: 4 × 7 = 28
  calc.greet("Ahmed");   // Output: Hello, Ahmed! Welcome to Calculator.
}
```

---

## 🔄 Methods with Return Values

Methods can **return** a value instead of just printing:

```dart
class MathHelper {
  // Returns an int
  int square(int number) {
    return number * number;
  }

  // Returns a double
  double average(double a, double b) {
    return (a + b) / 2;
  }

  // Returns a bool
  bool isEven(int number) {
    return number % 2 == 0;
  }

  // Returns a String
  String formatCurrency(double amount) {
    return "\$${amount.toStringAsFixed(2)}";
  }
}

void main() {
  MathHelper math = MathHelper();

  int result = math.square(5);
  print(result); // 25

  double avg = math.average(80, 90);
  print(avg); // 85.0

  print(math.isEven(4));            // true
  print(math.formatCurrency(9.5));  // $9.50
}
```

---

## 🎯 Methods that Use Attributes

Methods can access and modify the object's **own attributes**:

```dart
class BankAccount {
  String owner = "";
  double balance = 0.0;

  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount}. Balance: \$$balance");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrew \$${amount}. Balance: \$$balance");
    } else {
      print("Insufficient funds! Balance: \$$balance");
    }
  }

  void displayInfo() {
    print("Account: $owner | Balance: \$$balance");
  }
}

void main() {
  BankAccount account = BankAccount();
  account.owner = "Ahmed";
  account.balance = 1000.0;

  account.displayInfo();    // Account: Ahmed | Balance: $1000.0
  account.deposit(500.0);   // Deposited $500.0. Balance: $1500.0
  account.withdraw(200.0);  // Withdrew $200.0. Balance: $1300.0
  account.withdraw(2000.0); // Insufficient funds! Balance: $1300.0
}
```

---

## 🔑 The `this` Keyword

`this` refers to the **current object**. It's useful when parameter names match attribute names:

```dart
class Student {
  String name = "";
  int age = 0;

  // Without 'this' — parameter shadows attribute
  void setName(String name) {
    this.name = name; // this.name = attribute, name = parameter
  }

  // Same pattern
  void setAge(int age) {
    this.age = age;
  }

  void printInfo() {
    print("Name: ${this.name}, Age: ${this.age}");
    // Note: 'this' is optional when there's no ambiguity
    // print("Name: $name, Age: $age"); // also works
  }
}
```

---

## 🧩 Method Types Summary

| Type | Syntax | Example |
|------|--------|---------|
| No params, no return | `void method()` | `void bark()` |
| With params, no return | `void method(Type param)` | `void deposit(double amount)` |
| No params, with return | `Type method()` | `double getBalance()` |
| With params, with return | `Type method(Type param)` | `int add(int a, int b)` |

---

## 🏗️ Complete Example: Todo Item

```dart
class TodoItem {
  String title = "";
  String description = "";
  bool isCompleted = false;
  int priority = 1;

  void complete() {
    isCompleted = true;
    print("✅ '$title' marked as complete!");
  }

  void setPriority(int level) {
    if (level >= 1 && level <= 3) {
      priority = level;
      String label = level == 1 ? "Low" : level == 2 ? "Medium" : "High";
      print("Priority of '$title' set to $label");
    }
  }

  String getStatus() {
    return isCompleted ? "✅ Done" : "⬜ Pending";
  }

  void display() {
    print("[$priority] ${getStatus()} $title");
    if (description.isNotEmpty) {
      print("   $description");
    }
  }
}
```

---

## ⚠️ Common Mistakes

### Mistake 1: Calling a method without an object
```dart
bark(); // ❌ Error — whose bark?
myDog.bark(); // ✅ Correct
```

### Mistake 2: Forgetting parentheses
```dart
myDog.bark; // ❌ This references the method, doesn't call it
myDog.bark(); // ✅ This calls the method
```

### Mistake 3: Wrong return type
```dart
int add(int a, int b) {
  print(a + b); // ❌ void action, but declared int return
}

int add(int a, int b) {
  return a + b; // ✅ Returns the value
}
```

---

## 💡 Key Takeaways

1. Methods are **functions that belong to a class**
2. They define the **behavior** of objects
3. Methods can have **parameters** (input) and **return values** (output)
4. Methods can **access and modify** the object's own attributes
5. Use `this` when parameter names match attribute names
6. Call methods using **dot notation**: `object.method()`

---

## ➡️ Next Lesson
[07 — Constructors](../07_constructors/)
