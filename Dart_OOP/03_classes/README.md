# 03 — Classes

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand what a class is and why we need it
- Write a class in Dart with attributes (properties)
- Understand the class as a "blueprint" concept
- Know the syntax rules for creating classes

---

## 📖 What is a Class?

A **class** is a **blueprint** (template) for creating objects. It defines:
- **What data** an object will have (attributes/properties)
- **What actions** an object can perform (methods)

### Real-World Analogy

Think of a class like an **architectural blueprint** for a house:

```
┌─────────────────────────────────────────┐
│          BLUEPRINT (Class)              │
│                                         │
│  Defines:                               │
│    - Number of rooms                    │
│    - Color of walls                     │
│    - Size of windows                    │
│                                         │
│  But it's NOT a house itself!           │
│  It's the PLAN for building houses.     │
└─────────────────────────────────────────┘
         │              │
         ▼              ▼
   ┌──────────┐   ┌──────────┐
   │  House 1 │   │  House 2 │    ← Objects (actual houses)
   │  3 rooms │   │  5 rooms │
   │  White   │   │  Blue    │
   └──────────┘   └──────────┘
```

---

## 🔧 Creating a Class in Dart

### Basic Syntax
```dart
class ClassName {
  // Attributes (properties/data)
  DataType attributeName = value;

  // Methods (behaviors/actions)
  ReturnType methodName() {
    // code
  }
}
```

### Your First Class
```dart
class Student {
  // Attributes
  String name = "";
  int age = 0;
  double grade = 0.0;
  bool isActive = true;
}
```

---

## 📝 Class Naming Rules

| Rule | Example |
|------|---------|
| Use **PascalCase** | `Student`, `BankAccount`, `ElectricCar` |
| Start with uppercase letter | `Person` ✅, `person` ❌ |
| Be descriptive | `ShoppingCart` ✅, `SC` ❌ |
| Use nouns (not verbs) | `Calculator` ✅, `Calculate` ❌ |

### Good Names
```dart
class Student { }
class BankAccount { }
class ShoppingCartItem { }
class UserProfile { }
```

### Bad Names
```dart
class student { }       // ❌ starts with lowercase
class STUDENT { }       // ❌ all caps
class stu { }           // ❌ not descriptive
class Calculate { }     // ❌ verb, not noun
```

---

## 🏗️ Attributes (Properties)

Attributes are the **data** that each object will hold. They describe the object's characteristics.

```dart
class Phone {
  // Attributes describe what a phone HAS
  String brand = "Unknown";
  String model = "";
  int storage = 64;        // GB
  double screenSize = 6.1; // inches
  bool isOn = false;
  int batteryLevel = 100;  // percentage
}
```

### Attribute Types
You can use any Dart data type for attributes:

| Type | Example | Use For |
|------|---------|---------|
| `String` | `name = "Ahmed"` | Text |
| `int` | `age = 20` | Whole numbers |
| `double` | `price = 9.99` | Decimal numbers |
| `bool` | `isActive = true` | True/false |
| `List` | `grades = [90, 85, 92]` | Collections |

---

## 🧩 Class with Multiple Attributes

```dart
class Book {
  String title = "";
  String author = "";
  int pages = 0;
  double price = 0.0;
  bool isAvailable = true;
  String category = "General";
}
```

```dart
class Employee {
  String firstName = "";
  String lastName = "";
  int id = 0;
  String department = "";
  double salary = 0.0;
  bool isFullTime = true;
  int yearsOfExperience = 0;
}
```

---

## ⚠️ Important Notes

1. **A class is NOT an object** — it's just the blueprint
2. **A class defines structure** — objects hold actual values
3. **One class → many objects** — you can create unlimited objects from one class
4. **Class names are types** — `Student` becomes a data type you can use

```dart
class Student {
  String name = "";
  int age = 0;
}

void main() {
  // Student is now a TYPE, just like String or int
  Student student1;  // This declares a variable of type Student
}
```

---

## 🔑 Class = Type

Once you create a class, it becomes a **new data type**:

```dart
// Built-in types
String name = "Ahmed";
int age = 20;

// Your custom types (from classes!)
Student myStudent = Student();
Phone myPhone = Phone();
Book favoriteBook = Book();
```

---

## 💡 Key Takeaways

1. A class is a **blueprint/template** for creating objects
2. Classes contain **attributes** (data) and **methods** (behavior)
3. Use **PascalCase** for class names
4. A class defines structure — it's not an object itself
5. Creating a class creates a **new data type** in Dart

---

## ➡️ Next Lesson
[04 — Objects](../04_objects/)
