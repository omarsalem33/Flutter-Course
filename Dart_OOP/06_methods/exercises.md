# 06 — Methods | Exercises

## Exercise 1: Define Methods
Add methods to this class:

```dart
class Circle {
  double radius = 0.0;

  // Method 1: Calculate and return the area (π × r²)
  // Use 3.14 for π


  // Method 2: Calculate and return the circumference (2 × π × r)


  // Method 3: Print the circle's info (radius, area, circumference)

}
```

---

## Exercise 2: Fix the Errors
Find and fix all errors:

```dart
class Lamp {
  bool isOn = false;

  void turnOn {  // Error 1
    isOn = true;
    print("Lamp is ON");
  }

  String getStatus() {
    if (isOn) {
      print("ON");  // Error 2
    } else {
      print("OFF");
    }
  }
}

void main() {
  Lamp myLamp = Lamp();
  myLamp.turnOn;  // Error 3
  print(Lamp.getStatus());  // Error 4
}
```

---

## Exercise 3: Predict the Output
What will this code print?

```dart
class Counter {
  int count = 0;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }

  int getCount() {
    return count;
  }

  void reset() {
    count = 0;
  }
}

void main() {
  Counter c = Counter();
  c.increment();
  c.increment();
  c.increment();
  c.decrement();
  print(c.getCount());

  c.reset();
  c.increment();
  print(c.getCount());
}
```

Your answer:
```
Line 1: ___
Line 2: ___
```

---

## Exercise 4: Create a Class with Methods
Create a `Rectangle` class with:
- Attributes: `width` and `height` (double)
- Methods:
  1. `double getArea()` — returns width × height
  2. `double getPerimeter()` — returns 2 × (width + height)
  3. `bool isSquare()` — returns true if width equals height
  4. `void display()` — prints all info

```dart
class Rectangle {
  // YOUR CODE HERE
}

void main() {
  Rectangle r = Rectangle();
  r.width = 5.0;
  r.height = 5.0;
  r.display();
  print("Is square? ${r.isSquare()}");
}
```

---

## Exercise 5: The `this` Keyword
Rewrite this class using `this` where appropriate:

```dart
class Person {
  String name = "";
  int age = 0;

  void setName(String n) {
    name = n;
  }

  void setAge(int a) {
    age = a;
  }
}
```

Rewritten:
```dart
class Person {
  // YOUR CODE HERE — use 'this' keyword
}
```
