# 09 — Constructors Part Two | Tasks

## Task 1: DateTime Helper
Create a `DateInfo` class with:
- Attributes: day, month, year (all `final int`)
- Regular constructor: `DateInfo(day, month, year)`
- Named constructors:
  - `DateInfo.today()` — uses current date
  - `DateInfo.newYear(int year)` — January 1st of given year
  - `DateInfo.fromString(String date)` — parse "DD/MM/YYYY"
- Methods:
  - `String format()` — returns "DD/MM/YYYY"
  - `bool isLeapYear()` — checks if the year is a leap year
  - `void display()` — prints formatted date

---

## Task 2: Shape Factory
Create a base `Shape` class and use a factory constructor to create different shapes:

```dart
class Shape {
  String type;
  double area;

  Shape(this.type, this.area);

  // Factory: creates the right shape based on type
  factory Shape.create(String type, Map<String, double> params) {
    // "circle" → needs "radius"
    // "rectangle" → needs "width" and "height"
    // "triangle" → needs "base" and "height"
    // Calculate area and return Shape
  }

  void display() {
    print("$type — Area: ${area.toStringAsFixed(2)}");
  }
}
```

Create one of each shape and display them.

---

## Task 3: User Registration System
Create a `User` class that demonstrates ALL constructor types:
1. **Main constructor**: `User(id, name, email, role, joinDate)`
2. **Named**: `User.guest()` — creates a guest user
3. **Named**: `User.admin(name, email)` — creates an admin with auto-ID
4. **Redirecting**: `User.basic(name, email)` — redirects to main with default role
5. **Factory**: `User.fromJson(Map)` — creates from JSON data
6. Use **initializer list** to compute a display name from name

Create users with each constructor type and display their info.

```dart
// YOUR CODE HERE
```
