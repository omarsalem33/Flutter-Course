# 01 — Introduction to OOP

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand what Object-Oriented Programming (OOP) is
- Know why OOP is important in modern software development
- Compare OOP with procedural programming
- Relate OOP concepts to real-world examples

---

## 📖 What is OOP?

**Object-Oriented Programming (OOP)** is a programming paradigm (style) that organizes code around **objects** — things that have data and behavior.

Instead of writing a long list of instructions (procedural), OOP lets you model your program like the real world: with things (objects) that have properties and can do actions.

---

## 🌍 Real-World Analogy

Think about a **car**:

```
┌──────────────────────────────────┐
│            CAR (Object)          │
├──────────────────────────────────┤
│  Properties (Data):              │
│    - color = "Red"               │
│    - brand = "Toyota"            │
│    - speed = 120                 │
│    - fuelLevel = 75%             │
├──────────────────────────────────┤
│  Behaviors (Actions):            │
│    - start()                     │
│    - accelerate()                │
│    - brake()                     │
│    - refuel()                    │
└──────────────────────────────────┘
```

In OOP, everything is modeled this way — with **data** (what it has) and **behavior** (what it can do).

---

## 🔀 Procedural vs OOP

### Procedural Style (Before OOP)
```dart
// Data is separate from functions
String studentName = "Ahmed";
int studentAge = 20;
double studentGrade = 85.5;

void printStudent(String name, int age, double grade) {
  print("Name: $name, Age: $age, Grade: $grade");
}

printStudent(studentName, studentAge, studentGrade);
```

### OOP Style
```dart
// Data and behavior live together inside an object
class Student {
  String name = "Ahmed";
  int age = 20;
  double grade = 85.5;

  void printInfo() {
    print("Name: $name, Age: $age, Grade: $grade");
  }
}

void main() {
  Student student = Student();
  student.printInfo();
}
```

---

## ❓ Why Use OOP?

| Benefit | Explanation |
|---------|-------------|
| **Organization** | Code is grouped by real-world concepts |
| **Reusability** | Write once, use in many places |
| **Maintainability** | Easy to find and fix problems |
| **Scalability** | Easy to add new features |
| **Teamwork** | Different developers can work on different objects |

---

## 🏗️ Programming Paradigms

A **paradigm** is a style or approach to programming:

| Paradigm | Focus | Example Languages |
|----------|-------|-------------------|
| **Procedural** | Step-by-step instructions | C, Pascal |
| **Object-Oriented** | Objects with data & behavior | Dart, Java, C++ |
| **Functional** | Pure functions, no side effects | Haskell, Elm |

**Dart supports OOP** as its primary paradigm, which makes it perfect for building Flutter apps!

---

## 🎮 Real-World OOP Examples

Think about these real-world things as objects:

| Object | Properties | Behaviors |
|--------|-----------|-----------|
| **Phone** | brand, color, batteryLevel | call(), sendMessage(), charge() |
| **Bank Account** | ownerName, balance, accountNumber | deposit(), withdraw(), checkBalance() |
| **Player** (game) | name, health, score | attack(), defend(), heal() |

---

## 💡 Key Takeaways

1. OOP organizes code around **objects** (data + behavior)
2. It models programs like the **real world**
3. It makes code **easier to understand**, **maintain**, and **scale**
4. Dart is an **OOP language** — everything in Dart is an object!

---

## ➡️ Next Lesson
[02 — Intro to OOP Part Two](../02_intro_to_oop_part_two/)
