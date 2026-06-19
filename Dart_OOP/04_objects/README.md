# 04 — Objects

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand what an object is
- Create objects from classes in Dart
- Access and modify object attributes
- Understand the relationship between classes and objects

---

## 📖 What is an Object?

An **object** is an **instance** of a class. If a class is the blueprint, the object is the **actual thing** built from that blueprint.

```
  CLASS (Blueprint)              OBJECTS (Instances)
┌──────────────────┐     ┌──────────────┐  ┌──────────────┐
│     Student      │     │   student1   │  │   student2   │
│                  │ ──▶ │ name="Ahmed" │  │ name="Sara"  │
│  name: String    │     │ age=20       │  │ age=22       │
│  age: int        │     │ gpa=3.5      │  │ gpa=3.8      │
│  gpa: double     │     └──────────────┘  └──────────────┘
└──────────────────┘
```

---

## 🔧 Creating an Object

### Syntax
```dart
ClassName variableName = ClassName();
```

### Step by Step
```dart
// Step 1: Define the class (blueprint)
class Student {
  String name = "";
  int age = 0;
  double gpa = 0.0;
}

void main() {
  // Step 2: Create an object (instance)
  Student student1 = Student();

  // Now student1 is a real object with its own data!
  print(student1.name); // Output: "" (default value)
  print(student1.age);  // Output: 0
  print(student1.gpa);  // Output: 0.0
}
```

---

## 📝 Accessing Attributes (Dot Notation)

Use the **dot operator (`.`)** to access an object's attributes:

```dart
objectName.attributeName
```

### Reading Values
```dart
class Car {
  String brand = "Toyota";
  String color = "White";
  int year = 2024;
}

void main() {
  Car myCar = Car();

  // Reading attributes
  print(myCar.brand); // Output: Toyota
  print(myCar.color); // Output: White
  print(myCar.year);  // Output: 2024
}
```

### Changing Values
```dart
void main() {
  Car myCar = Car();

  // Modify attributes
  myCar.brand = "Honda";
  myCar.color = "Red";
  myCar.year = 2025;

  print(myCar.brand); // Output: Honda
  print(myCar.color); // Output: Red
  print(myCar.year);  // Output: 2025
}
```

---

## 🏭 Creating Multiple Objects

You can create **many objects** from the same class. Each object has its **own copy** of the data:

```dart
class Phone {
  String brand = "";
  int storage = 0;
  double price = 0.0;
}

void main() {
  // Each object is independent
  Phone phone1 = Phone();
  phone1.brand = "Samsung";
  phone1.storage = 128;
  phone1.price = 999.99;

  Phone phone2 = Phone();
  phone2.brand = "iPhone";
  phone2.storage = 256;
  phone2.price = 1199.99;

  Phone phone3 = Phone();
  phone3.brand = "Google Pixel";
  phone3.storage = 128;
  phone3.price = 799.99;

  // Each object has its own data
  print(phone1.brand); // Samsung
  print(phone2.brand); // iPhone
  print(phone3.brand); // Google Pixel
}
```

---

## 🔍 Object vs Class — Key Differences

| Feature | Class | Object |
|---------|-------|--------|
| **What is it?** | Blueprint/template | Actual instance |
| **Exists in** | Code definition | Memory at runtime |
| **How many?** | One class definition | Many objects |
| **Has real data?** | No (defines structure) | Yes (holds values) |
| **Created with** | `class` keyword | `ClassName()` |

---

## 🧩 Complete Example

```dart
class Book {
  String title = "";
  String author = "";
  int pages = 0;
  double price = 0.0;
  bool isAvailable = true;
}

void main() {
  // Create first book
  Book book1 = Book();
  book1.title = "Flutter in Action";
  book1.author = "Eric Windmill";
  book1.pages = 368;
  book1.price = 39.99;

  // Create second book
  Book book2 = Book();
  book2.title = "Dart Apprentice";
  book2.author = "Jonathan Sande";
  book2.pages = 457;
  book2.price = 49.99;
  book2.isAvailable = false;

  // Display information
  print("Book 1: ${book1.title} by ${book1.author}");
  print("Pages: ${book1.pages}, Price: \$${book1.price}");
  print("Available: ${book1.isAvailable}");

  print("");

  print("Book 2: ${book2.title} by ${book2.author}");
  print("Pages: ${book2.pages}, Price: \$${book2.price}");
  print("Available: ${book2.isAvailable}");
}
```

---

## ⚠️ Common Mistakes

### Mistake 1: Forgetting the parentheses `()`
```dart
Student student1 = Student;  // ❌ Error!
Student student1 = Student(); // ✅ Correct
```

### Mistake 2: Using the class name instead of object name
```dart
Student student1 = Student();
print(Student.name);  // ❌ Wrong — accessing class, not object
print(student1.name); // ✅ Correct — accessing the object
```

### Mistake 3: Accessing attributes before creating an object
```dart
Student student1;       // Declared but NOT created
print(student1.name);   // ❌ Error — object not initialized
```

---

## 💡 Key Takeaways

1. An object is an **instance** (real copy) of a class
2. Create objects with `ClassName()`
3. Access attributes using **dot notation** (`.`)
4. Each object has its **own independent copy** of the data
5. One class can produce **unlimited objects**

---

## ➡️ Next Lesson
[05 — Objects Part Two](../05_objects_part_two/)
