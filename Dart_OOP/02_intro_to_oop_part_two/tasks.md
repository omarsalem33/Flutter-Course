# 02 — Intro to OOP Part Two | Tasks

## Task 1: Design an OOP System
Choose one of the following systems:
- A Library Management System
- A Social Media App
- A Food Delivery App

For your chosen system:
1. Identify **4 objects** (classes)
2. For each object, describe which **pillar** is demonstrated:
   - What data is hidden? (Encapsulation)
   - What inherits from what? (Inheritance)
   - What method behaves differently per type? (Polymorphism)
   - What is the simplified interface? (Abstraction)

---

## Task 2: Explain to a Beginner
Write a short explanation (in your own words) for each OOP pillar using a **school** as the real-world example:
- Students, Teachers, Courses, Classrooms

For each pillar, give one concrete example from the school context.

---

## Task 3: Find the Pillar
For each code snippet, identify which pillar is being demonstrated:

### Snippet A
```dart
class Employee {
  double _salary;
  
  void setSalary(double amount) {
    if (amount > 0) _salary = amount;
  }
}
```
**Pillar:** _______________

### Snippet B
```dart
class ElectricCar extends Car {
  int batteryLevel;
  
  void charge() {
    batteryLevel = 100;
  }
}
```
**Pillar:** _______________

### Snippet C
```dart
abstract class Notification {
  void send(String message);
}
```
**Pillar:** _______________

### Snippet D
```dart
void makeAllSpeak(List<Animal> animals) {
  for (var animal in animals) {
    animal.speak(); // Each animal speaks differently!
  }
}
```
**Pillar:** _______________
