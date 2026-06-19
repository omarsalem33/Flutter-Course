# 09 — Constructors Part Two | Exercises

## Exercise 1: Named Constructors
Add named constructors to this class:

```dart
class Temperature {
  double celsius;

  Temperature(this.celsius);

  // 1. Named constructor: from Fahrenheit
  //    Formula: C = (F - 32) × 5/9


  // 2. Named constructor: freezing point (0°C)


  // 3. Named constructor: boiling point (100°C)


  double toFahrenheit() {
    return celsius * 9 / 5 + 32;
  }

  void display() {
    print("${celsius}°C / ${toFahrenheit().toStringAsFixed(1)}°F");
  }
}
```

---

## Exercise 2: Predict the Output
```dart
class Box {
  double width;
  double height;
  final double area;

  Box(this.width, this.height) : area = width * height;

  Box.square(double side) : this(side, side);

  Box.unit() : this(1, 1);
}

void main() {
  Box b1 = Box(4, 5);
  Box b2 = Box.square(3);
  Box b3 = Box.unit();

  print(b1.area);
  print(b2.area);
  print(b3.area);
  print(b2.width);
}
```

Your answer:
```
Line 1: ___
Line 2: ___
Line 3: ___
Line 4: ___
```

---

## Exercise 3: Factory Constructor
Create a `Logger` class with a factory constructor that ensures only **one instance** exists (singleton):

```dart
class Logger {
  static Logger? _instance;
  final String name;

  // Private constructor


  // Factory constructor — returns existing or new instance


  void log(String message) {
    print("[$name] $message");
  }
}

void main() {
  Logger l1 = Logger("App");
  Logger l2 = Logger("App");

  print(identical(l1, l2)); // Should print: true
  l1.log("Started");
}
```

---

## Exercise 4: fromJson Constructor
Create a `Product` class with:
- Attributes: name, price, category, inStock
- A regular constructor
- A `Product.fromJson()` factory constructor

```dart
class Product {
  // YOUR CODE HERE
}

void main() {
  Map<String, dynamic> data = {
    'name': 'Laptop',
    'price': 999.99,
    'category': 'Electronics',
    'inStock': true,
  };

  Product p = Product.fromJson(data);
  print("${p.name} - \$${p.price}");
}
```

---

## Exercise 5: Initializer List
What's wrong with this code? Fix it using an initializer list:

```dart
class Circle {
  final double radius;
  final double area;
  final double circumference;

  Circle(this.radius) {
    area = 3.14 * radius * radius;           // ❌ Error
    circumference = 2 * 3.14 * radius;       // ❌ Error
  }
}
```

Corrected:
```dart
class Circle {
  // YOUR CODE HERE
}
```
