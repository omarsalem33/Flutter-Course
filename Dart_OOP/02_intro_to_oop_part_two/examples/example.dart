// ============================================
// 02 — Intro to OOP Part Two | Example
// ============================================
// This example demonstrates all 4 pillars of
// OOP in a simple, easy-to-understand way.
// ============================================

// --- PILLAR 1: Abstraction ---
// Abstract class defines WHAT to do (contract)
abstract class Shape {
  String color;

  Shape(this.color);

  double area(); // WHAT to calculate (no HOW)
  void describe(); // WHAT to display
}

// --- PILLAR 2: Inheritance ---
// Circle inherits from Shape (gets color for free)
class Circle extends Shape {
  double radius;

  Circle(this.radius, String color) : super(color);

  // --- PILLAR 3: Polymorphism ---
  // Same method name, different implementation
  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void describe() {
    print("I am a $color Circle with radius $radius");
    print("My area is: ${area().toStringAsFixed(2)}");
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height, String color) : super(color);

  @override
  double area() {
    return width * height;
  }

  @override
  void describe() {
    print("I am a $color Rectangle (${width}x$height)");
    print("My area is: ${area().toStringAsFixed(2)}");
  }
}

// --- PILLAR 4: Encapsulation ---
class ShapeCollection {
  List<Shape> _shapes = []; // Private — hidden from outside

  void addShape(Shape shape) {
    _shapes.add(shape);
    print("Added a ${shape.color} shape!");
  }

  int get count => _shapes.length; // Controlled access

  void describeAll() {
    print("\n--- All Shapes ---");
    for (var shape in _shapes) {
      shape.describe(); // Polymorphism in action!
      print("");
    }
  }

  double totalArea() {
    double total = 0;
    for (var shape in _shapes) {
      total += shape.area();
    }
    return total;
  }
}

void main() {
  // Create different shapes
  Circle circle = Circle(5, "Red");
  Rectangle rectangle = Rectangle(4, 6, "Blue");
  Circle smallCircle = Circle(2, "Green");

  // Use encapsulation — interact through public methods only
  ShapeCollection collection = ShapeCollection();
  collection.addShape(circle);
  collection.addShape(rectangle);
  collection.addShape(smallCircle);

  // Polymorphism — same method call, different results
  collection.describeAll();

  // Encapsulation — access controlled data
  print("Total shapes: ${collection.count}");
  print("Total area: ${collection.totalArea().toStringAsFixed(2)}");
}
