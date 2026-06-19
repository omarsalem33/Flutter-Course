# 07 — Constructors | Exercises

## Exercise 1: Write a Constructor
Add a shorthand constructor to this class:

```dart
class Book {
  String title;
  String author;
  int pages;
  double price;

  // Write the constructor here:

}
```

Then create 2 Book objects using the constructor.

---

## Exercise 2: Fix the Errors
Find and fix all errors:

```dart
class Phone {
  String brand;
  int storage;
  double price;

  void Phone(this.brand, this.storage, this.price) {  // Error 1
    return;  // Error 2
  }
}

void main() {
  Phone p = Phone();  // Error 3
  print(p.brand);
}
```

---

## Exercise 3: Predict the Output
```dart
class Point {
  double x;
  double y;

  Point(this.x, this.y);
}

void main() {
  Point p1 = Point(3.0, 4.0);
  Point p2 = Point(0.0, 0.0);

  print("P1: (${p1.x}, ${p1.y})");
  print("P2: (${p2.x}, ${p2.y})");

  p1.x = 10.0;
  print("P1 updated: (${p1.x}, ${p1.y})");
}
```

Your answer:
```
Line 1: ___
Line 2: ___
Line 3: ___
```

---

## Exercise 4: Named Parameters
Convert this constructor to use **named parameters** (all required except major which defaults to "General"):

```dart
class Student {
  String name;
  int age;
  String major;

  Student(this.name, this.age, this.major);
}
```

Rewrite:
```dart
class Student {
  // YOUR CODE HERE
}

void main() {
  // Create student using named params
  // YOUR CODE HERE
}
```

---

## Exercise 5: Multiple Objects
Create a class `Employee` with constructor (name, department, salary). Then:
1. Create a List of 4 Employee objects
2. Loop through and print each one

```dart
class Employee {
  // YOUR CODE HERE
}

void main() {
  List<Employee> employees = [
    // YOUR CODE HERE
  ];

  for (Employee e in employees) {
    // YOUR CODE HERE
  }
}
```
