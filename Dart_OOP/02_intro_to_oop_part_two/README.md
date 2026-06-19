# 02 — Introduction to OOP Part Two: The Four Pillars

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Name and explain the **4 pillars** of OOP
- Understand each pillar with real-world analogies
- Know how these pillars help build better software

---

## 📖 The Four Pillars of OOP

OOP is built on **4 fundamental principles** (pillars). Think of them as the 4 walls holding up a building:

```
┌─────────────────────────────────────────────┐
│             Object-Oriented Programming      │
├───────────┬───────────┬──────────┬──────────┤
│           │           │          │          │
│ Encapsu-  │ Inheri-   │ Poly-    │ Abstrac- │
│ lation    │ tance     │ morphism │ tion     │
│           │           │          │          │
└───────────┴───────────┴──────────┴──────────┘
```

---

## 🔒 Pillar 1: Encapsulation

**Definition:** Hiding the internal details and only exposing what's necessary.

### Real-World Analogy
A **TV remote**:
- You press buttons (public interface)
- You don't see the circuit board inside (hidden details)
- You don't need to understand electronics to change the channel

### In Dart
```dart
class BankAccount {
  String ownerName;
  double _balance; // _ means private (hidden)

  BankAccount(this.ownerName, this._balance);

  // Public method — the only way to interact with balance
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  double getBalance() {
    return _balance;
  }
}
```

### Why It Matters
- **Protects data** from accidental changes
- **Controls access** — you decide what others can see/change
- **Reduces bugs** — data can only be modified through controlled methods

---

## 🧬 Pillar 2: Inheritance

**Definition:** A new class can inherit (get) properties and behaviors from an existing class.

### Real-World Analogy
**Family traits:**
- A child inherits eye color, height, and other traits from parents
- The child also has their own unique traits

### In Dart
```dart
// Parent class (base class)
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() {
    print("$name is eating.");
  }
}

// Child class (inherits from Animal)
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  void bark() {
    print("$name says: Woof!");
  }
}
```

### Why It Matters
- **Reuse code** — don't repeat yourself
- **Create hierarchies** — general → specific
- **Easy to extend** — add new types without changing existing code

---

## 🎭 Pillar 3: Polymorphism

**Definition:** Objects of different types can be treated as the same type, but behave differently.

**Poly** = many, **morph** = forms → "Many forms"

### Real-World Analogy
The word **"open"**:
- Open a **door** → push/pull it
- Open a **book** → flip the cover
- Open a **file** → double-click it

Same action word, different behavior depending on the object!

### In Dart
```dart
class Shape {
  double area() {
    return 0;
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}
```

### Why It Matters
- **Flexible code** — same interface, different implementations
- **Extensible** — add new shapes without changing existing code
- **Clean code** — treat related objects uniformly

---

## 🎨 Pillar 4: Abstraction

**Definition:** Showing only the essential features and hiding complex details.

### Real-World Analogy
**Driving a car:**
- You know: steering wheel, pedals, gear shift
- You don't need to know: how the engine combustion works, how the transmission shifts gears internally

You interact with a **simplified interface** of a complex system.

### In Dart
```dart
// Abstract class — defines WHAT to do, not HOW
abstract class Payment {
  void processPayment(double amount);
  void refund(double amount);
}

// Concrete class — defines HOW to do it
class CreditCardPayment extends Payment {
  @override
  void processPayment(double amount) {
    print("Processing \$$amount via Credit Card...");
  }

  @override
  void refund(double amount) {
    print("Refunding \$$amount to Credit Card...");
  }
}
```

### Why It Matters
- **Simplifies complexity** — focus on what matters
- **Defines contracts** — specifies what subclasses must implement
- **Reduces coupling** — code depends on abstractions, not details

---

## 📊 Summary Table

| Pillar | One-Line Definition | Key Benefit |
|--------|-------------------|-------------|
| **Encapsulation** | Hide internal details | Data protection |
| **Inheritance** | Reuse from parent classes | Code reuse |
| **Polymorphism** | Same interface, different behavior | Flexibility |
| **Abstraction** | Show only what's necessary | Simplicity |

---

## 🧠 How They Work Together

Imagine building a **Flutter app** for a zoo:

1. **Abstraction** — Define what every animal must do: `eat()`, `sleep()`, `makeSound()`
2. **Inheritance** — Lion, Eagle, and Fish all inherit from Animal
3. **Polymorphism** — Call `makeSound()` on any animal — each responds differently
4. **Encapsulation** — Health data is private; only the vet system can modify it

---

## 💡 Key Takeaways

1. OOP has **4 pillars**: Encapsulation, Inheritance, Polymorphism, Abstraction
2. Each pillar solves a different problem in software design
3. They work **together** to create clean, maintainable, and scalable code
4. You will learn each pillar **in depth** in later lessons

---

## ➡️ Next Lesson
[03 — Classes](../03_classes/)
