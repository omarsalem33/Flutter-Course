# 09 — Constructors Part Two

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Create and use **named constructors**
- Understand **redirecting constructors**
- Use **initializer lists**
- Build **factory constructors**
- Choose the right constructor type for each situation

---

## 📖 Why Multiple Constructors?

Sometimes you need **different ways** to create the same type of object:

```
Student("Ahmed", 20)              ← from direct values
Student.fromJson(jsonData)        ← from JSON data
Student.transfer(otherStudent)    ← from another student
Student.anonymous()               ← with default values
```

Dart solves this with **named constructors**.

---

## 🏷️ Named Constructors

Named constructors give alternative ways to create objects:

### Syntax
```dart
class ClassName {
  ClassName.constructorName(params) {
    // initialization
  }
}
```

### Example
```dart
class Point {
  double x;
  double y;

  // Main constructor
  Point(this.x, this.y);

  // Named constructor: origin
  Point.origin()
      : x = 0,
        y = 0;

  // Named constructor: from a single value (diagonal)
  Point.diagonal(double value)
      : x = value,
        y = value;

  // Named constructor: from another point (copy)
  Point.from(Point other)
      : x = other.x,
        y = other.y;

  void display() {
    print("Point($x, $y)");
  }
}

void main() {
  Point p1 = Point(3.0, 4.0);
  Point p2 = Point.origin();
  Point p3 = Point.diagonal(5.0);
  Point p4 = Point.from(p1);

  p1.display(); // Point(3.0, 4.0)
  p2.display(); // Point(0.0, 0.0)
  p3.display(); // Point(5.0, 5.0)
  p4.display(); // Point(3.0, 4.0)
}
```

---

## 📋 Initializer Lists

The colon `:` after a constructor lets you initialize `final` fields and run assertions **before** the constructor body:

```dart
class Rectangle {
  final double width;
  final double height;
  final double area;

  Rectangle(this.width, this.height)
      : area = width * height; // Calculated in initializer list

  void display() {
    print("Rectangle: ${width}x$height = $area");
  }
}

void main() {
  Rectangle r = Rectangle(5, 3);
  r.display(); // Rectangle: 5.0x3.0 = 15.0
}
```

### Multiple Initializations
```dart
class Student {
  final String fullName;
  final String email;
  final int enrollmentYear;

  Student(String firstName, String lastName)
      : fullName = "$firstName $lastName",
        email = "${firstName.toLowerCase()}.${lastName.toLowerCase()}@school.edu",
        enrollmentYear = DateTime.now().year;
}

void main() {
  Student s = Student("Ahmed", "Salem");
  print(s.fullName);        // Ahmed Salem
  print(s.email);           // ahmed.salem@school.edu
  print(s.enrollmentYear);  // 2024
}
```

---

## 🔄 Redirecting Constructors

A constructor can **redirect** to another constructor in the same class:

```dart
class Color {
  int red;
  int green;
  int blue;

  // Main constructor
  Color(this.red, this.green, this.blue);

  // Redirecting constructors — call the main constructor
  Color.red() : this(255, 0, 0);
  Color.green() : this(0, 255, 0);
  Color.blue() : this(0, 0, 255);
  Color.white() : this(255, 255, 255);
  Color.black() : this(0, 0, 0);

  void display() {
    print("RGB($red, $green, $blue)");
  }
}

void main() {
  Color c1 = Color(128, 64, 200);
  Color c2 = Color.red();
  Color c3 = Color.white();

  c1.display(); // RGB(128, 64, 200)
  c2.display(); // RGB(255, 0, 0)
  c3.display(); // RGB(255, 255, 255)
}
```

---

## 🏭 Factory Constructors

A `factory` constructor can return an **existing** object or a **different type** instead of always creating a new one:

### Use Case 1: Caching (Singleton Pattern)
```dart
class Database {
  static Database? _instance;

  String name;

  Database._internal(this.name);

  factory Database(String name) {
    // Return existing instance if it exists
    _instance ??= Database._internal(name);
    return _instance!;
  }
}

void main() {
  Database db1 = Database("MyDB");
  Database db2 = Database("OtherDB"); // Returns same instance!

  print(identical(db1, db2)); // true — same object!
  print(db1.name);             // MyDB
}
```

### Use Case 2: Conditional Object Creation
```dart
class Shape {
  String type;

  Shape(this.type);

  factory Shape.fromType(String type) {
    switch (type.toLowerCase()) {
      case "circle":
        return Shape("Circle");
      case "square":
        return Shape("Square");
      case "triangle":
        return Shape("Triangle");
      default:
        return Shape("Unknown");
    }
  }
}
```

### Use Case 3: From JSON
```dart
class User {
  final String name;
  final String email;
  final int age;

  User(this.name, this.email, this.age);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['name'] as String,
      json['email'] as String,
      json['age'] as int,
    );
  }
}

void main() {
  Map<String, dynamic> jsonData = {
    'name': 'Ahmed',
    'email': 'ahmed@mail.com',
    'age': 25,
  };

  User user = User.fromJson(jsonData);
  print("${user.name} | ${user.email}"); // Ahmed | ahmed@mail.com
}
```

---

## 📊 Constructor Types Summary

| Type | Syntax | Use When |
|------|--------|----------|
| **Default** | `ClassName()` | Simple creation |
| **Parameterized** | `ClassName(params)` | Need initial values |
| **Named** | `ClassName.name()` | Multiple creation methods |
| **Redirecting** | `ClassName.name() : this()` | Shortcut constructors |
| **Factory** | `factory ClassName()` | Control object creation |

---

## 🧩 Real-World Example: User Profile

```dart
class UserProfile {
  final String id;
  final String name;
  final String email;
  final String role;
  final DateTime createdAt;

  // Main constructor
  UserProfile(this.id, this.name, this.email, this.role, this.createdAt);

  // Named: create a guest user
  UserProfile.guest()
      : id = "guest",
        name = "Guest User",
        email = "guest@app.com",
        role = "guest",
        createdAt = DateTime.now();

  // Named: create an admin
  UserProfile.admin(String name, String email)
      : id = "admin_${DateTime.now().millisecondsSinceEpoch}",
        this.name = name,
        this.email = email,
        role = "admin",
        createdAt = DateTime.now();

  // Factory: from JSON (API response)
  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      json['id'],
      json['name'],
      json['email'],
      json['role'] ?? 'user',
      DateTime.parse(json['created_at']),
    );
  }

  void display() {
    print("[$role] $name ($email)");
  }
}

void main() {
  // Different ways to create users
  var guest = UserProfile.guest();
  var admin = UserProfile.admin("Ahmed", "ahmed@admin.com");
  var user = UserProfile.fromJson({
    'id': 'U001',
    'name': 'Sara',
    'email': 'sara@mail.com',
    'role': 'user',
    'created_at': '2024-01-15T10:30:00Z',
  });

  guest.display(); // [guest] Guest User (guest@app.com)
  admin.display(); // [admin] Ahmed (ahmed@admin.com)
  user.display();  // [user] Sara (sara@mail.com)
}
```

---

## 💡 Key Takeaways

1. **Named constructors** provide multiple ways to create objects: `ClassName.name()`
2. **Initializer lists** (`:`) set final fields and compute values before the body runs
3. **Redirecting constructors** delegate to another constructor: `ClassName.name() : this()`
4. **Factory constructors** control object creation — can return cached or conditional objects
5. Use `factory` for JSON parsing, singleton patterns, and conditional creation
6. Dart allows **one unnamed constructor** + **unlimited named constructors**

---

## ➡️ Next Topics
Encapsulation, Getters, Setters, and more!
