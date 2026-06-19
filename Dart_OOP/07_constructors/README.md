# 07 — Constructors

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand what a constructor is and why we need it
- Use the default constructor
- Create parameterized constructors
- Use Dart's shorthand constructor syntax
- Initialize objects with values at creation time

---

## 📖 What is a Constructor?

A **constructor** is a special method that is **automatically called** when you create a new object. Its job is to **initialize** (set up) the object's attributes.

```
Without Constructor:                With Constructor:
                                    
Student s = Student();              Student s = Student("Ahmed", 20);
s.name = "Ahmed";   // 3 lines     // Done in 1 line!
s.age = 20;
```

---

## 🔧 Default Constructor

If you don't write a constructor, Dart provides a **default constructor** automatically. It takes no arguments and does nothing special:

```dart
class Student {
  String name = "";
  int age = 0;

  // Dart automatically creates this (you don't need to write it):
  // Student();
}

void main() {
  Student s = Student(); // Calls the default constructor
  s.name = "Ahmed";      // Must set values separately
  s.age = 20;
}
```

---

## 🏗️ Custom Constructor

You can write your own constructor to accept initial values:

### Syntax
```dart
class ClassName {
  Type attribute;

  // Constructor — same name as the class
  ClassName(Type param1, Type param2) {
    attribute = param1;
  }
}
```

### Example
```dart
class Student {
  String name;
  int age;
  double gpa;

  // Custom constructor
  Student(String name, int age, double gpa) {
    this.name = name;
    this.age = age;
    this.gpa = gpa;
  }
}

void main() {
  // Now you MUST provide values when creating the object
  Student s = Student("Ahmed", 20, 3.7);
  print(s.name); // Ahmed
  print(s.age);  // 20
  print(s.gpa);  // 3.7
}
```

---

## ⚡ Shorthand Constructor (Dart Special!)

Dart has a beautiful shorthand syntax using `this.`:

```dart
// Long version
class Student {
  String name;
  int age;

  Student(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

// ✨ Shorthand version (Dart way!)
class Student {
  String name;
  int age;

  Student(this.name, this.age);
  // That's it! Dart handles the assignment automatically.
}
```

The shorthand `this.name` means: "take the parameter and assign it to the attribute `name`."

---

## 📝 Multiple Examples

### Car Class
```dart
class Car {
  String brand;
  String color;
  int year;
  double price;

  Car(this.brand, this.color, this.year, this.price);
}

void main() {
  Car car1 = Car("Toyota", "Red", 2024, 25000);
  Car car2 = Car("Honda", "Blue", 2023, 22000);

  print("${car1.brand} (${car1.year}) - \$${car1.price}");
  print("${car2.brand} (${car2.year}) - \$${car2.price}");
}
```

### Product Class
```dart
class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double totalValue() {
    return price * quantity;
  }

  void display() {
    print("$name | \$$price × $quantity = \$${totalValue()}");
  }
}
```

---

## 🔑 Constructor with Optional Parameters

### Optional Positional Parameters `[]`
```dart
class Student {
  String name;
  int age;
  String major;

  Student(this.name, this.age, [this.major = "Undeclared"]);
}

void main() {
  Student s1 = Student("Ahmed", 20, "Computer Science");
  Student s2 = Student("Sara", 22); // major defaults to "Undeclared"
}
```

### Named Parameters `{}`
```dart
class Student {
  String name;
  int age;
  String major;

  Student({required this.name, required this.age, this.major = "Undeclared"});
}

void main() {
  Student s1 = Student(name: "Ahmed", age: 20, major: "CS");
  Student s2 = Student(name: "Sara", age: 22);
  // Named params make code more readable!
}
```

---

## 🆚 Without vs With Constructor

### Without Constructor (tedious)
```dart
void main() {
  Student s1 = Student();
  s1.name = "Ahmed";
  s1.age = 20;
  s1.gpa = 3.7;

  Student s2 = Student();
  s2.name = "Sara";
  s2.age = 22;
  s2.gpa = 3.9;

  Student s3 = Student();
  s3.name = "Khalid";
  s3.age = 21;
  s3.gpa = 3.5;
}
```

### With Constructor (clean!)
```dart
void main() {
  Student s1 = Student("Ahmed", 20, 3.7);
  Student s2 = Student("Sara", 22, 3.9);
  Student s3 = Student("Khalid", 21, 3.5);
}
```

---

## ⚠️ Important Rules

1. **Constructor name = Class name**
2. **No return type** (not even `void`)
3. Once you write a custom constructor, the **default constructor is gone**
4. You can only have **one unnamed constructor** per class

```dart
class Student {
  String name;
  int age;

  Student(this.name, this.age);

  // ❌ Error: Can't have two unnamed constructors
  // Student(this.name);
}
```

---

## 💡 Key Takeaways

1. A constructor **initializes** an object when it's created
2. Dart provides a **default constructor** if you don't write one
3. Use `this.param` shorthand for clean, concise constructors
4. Use `required` for mandatory named parameters
5. Use `[]` for optional positional or `{}` for named parameters with defaults
6. Once you define a constructor, the default one **disappears**

---

## ➡️ Next Lesson
[08 — More on Attributes](../08_more_on_attributes/)
