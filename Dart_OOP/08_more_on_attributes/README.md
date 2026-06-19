# 08 — More on Attributes

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Understand the difference between instance and static attributes
- Use `final` attributes (set once, never change)
- Use `const` for compile-time constants
- Use `late` for deferred initialization
- Choose the right attribute modifier for each situation

---

## 📖 Instance vs Static Attributes

### Instance Attributes
Each object gets its **own copy**. This is what we've been using so far:

```dart
class Student {
  String name;    // Each student has their own name
  double gpa;     // Each student has their own GPA

  Student(this.name, this.gpa);
}

void main() {
  Student s1 = Student("Ahmed", 3.5);
  Student s2 = Student("Sara", 3.9);

  print(s1.name); // Ahmed
  print(s2.name); // Sara — different values!
}
```

### Static Attributes
**Shared** across all objects. Belongs to the **class**, not to individual objects:

```dart
class Student {
  String name;
  double gpa;
  static int totalStudents = 0; // Shared across ALL students

  Student(this.name, this.gpa) {
    totalStudents++; // Count goes up for every new student
  }
}

void main() {
  Student s1 = Student("Ahmed", 3.5);
  Student s2 = Student("Sara", 3.9);
  Student s3 = Student("Khalid", 3.2);

  // Access via CLASS name, not object
  print(Student.totalStudents); // 3
}
```

### Key Differences

| Feature | Instance | Static |
|---------|----------|--------|
| Belongs to | Each object | The class itself |
| Access via | `object.attribute` | `ClassName.attribute` |
| Each object has | Its own copy | Shared single copy |
| Use for | Object-specific data | Shared/global data |

---

## 🔒 `final` — Set Once, Never Change

A `final` attribute can only be set **once** (typically in the constructor) and cannot be changed after:

```dart
class Student {
  final String id;     // Set once in constructor, never changes
  final String name;   // Same — immutable after creation
  double gpa;          // This CAN change

  Student(this.id, this.name, this.gpa);
}

void main() {
  Student s = Student("S001", "Ahmed", 3.5);

  s.gpa = 3.8;    // ✅ OK — gpa is not final
  // s.name = "Sara"; // ❌ Error! name is final
  // s.id = "S002";   // ❌ Error! id is final

  print("${s.id}: ${s.name} — GPA: ${s.gpa}");
}
```

### When to use `final`
- Student ID (never changes after enrollment)
- Birth date
- Creation timestamp
- Database record ID

---

## 🔷 `const` — Compile-Time Constant

`const` values must be known **at compile time** (before the program runs):

```dart
class MathConstants {
  static const double pi = 3.14159265;
  static const double e = 2.71828182;
  static const double goldenRatio = 1.61803398;
}

class AppConfig {
  static const String appName = "My Flutter App";
  static const int maxRetries = 3;
  static const String apiVersion = "v2";
}

void main() {
  print(MathConstants.pi);     // 3.14159265
  print(AppConfig.appName);    // My Flutter App
  print(AppConfig.maxRetries); // 3
}
```

### `final` vs `const`

| Feature | `final` | `const` |
|---------|---------|---------|
| When set | At runtime (constructor) | At compile time |
| Can use constructor? | ✅ Yes | ❌ No |
| Can depend on input? | ✅ Yes | ❌ No |
| Value known before running? | Not necessarily | Always |

```dart
final DateTime now = DateTime.now();   // ✅ OK — set at runtime
// const DateTime now = DateTime.now(); // ❌ Error! Not known at compile time

const int maxAge = 150;     // ✅ OK — known at compile time
const double pi = 3.14159;  // ✅ OK — known at compile time
```

---

## ⏰ `late` — Initialize Later

`late` tells Dart: "I promise to set this value before I use it":

```dart
class DatabaseConnection {
  late String connectionString;
  late int port;

  void connect(String host, int p) {
    connectionString = "mongodb://$host";
    port = p;
    print("Connected to $connectionString:$port");
  }
}

void main() {
  DatabaseConnection db = DatabaseConnection();
  // connectionString is NOT set yet — accessing it would throw an error

  db.connect("localhost", 27017);
  print(db.connectionString); // ✅ Now it's set
}
```

### `late` with Lazy Initialization
`late` can also delay a computation until first access:

```dart
class Report {
  late String summary = _generateSummary();

  String _generateSummary() {
    print("Generating summary..."); // Only runs when first accessed
    return "Report generated at ${DateTime.now()}";
  }
}

void main() {
  Report r = Report();
  print("Report created.");       // Summary NOT generated yet
  print(r.summary);               // NOW it generates
  print(r.summary);               // Uses cached value, doesn't regenerate
}
```

---

## 🧩 Static Methods

Just like static attributes, methods can be `static` too — they belong to the class, not objects:

```dart
class Validator {
  static bool isValidEmail(String email) {
    return email.contains("@") && email.contains(".");
  }

  static bool isValidAge(int age) {
    return age > 0 && age < 150;
  }

  static bool isValidPassword(String password) {
    return password.length >= 8;
  }
}

void main() {
  // Call directly on the class — no object needed!
  print(Validator.isValidEmail("ahmed@email.com")); // true
  print(Validator.isValidAge(25));                   // true
  print(Validator.isValidPassword("123"));           // false
}
```

---

## 📊 Summary Table

| Modifier | Meaning | When to Use |
|----------|---------|-------------|
| (none) | Normal instance attribute | Most attributes |
| `static` | Shared across all objects | Counters, config, utility |
| `final` | Set once, can't change | IDs, names, birth dates |
| `const` | Compile-time constant | Math constants, config values |
| `late` | Initialize later | Lazy loading, deferred setup |

---

## 💡 Key Takeaways

1. **Instance attributes**: each object has its own copy
2. **Static attributes**: shared across all objects, accessed via class name
3. **`final`**: set once (at runtime), never changed
4. **`const`**: must be known at compile time
5. **`late`**: promise to set before first use; enables lazy initialization
6. **Static methods**: utility functions that don't need an object

---

## ➡️ Next Lesson
[09 — Constructors Part Two](../09_constructors_part_two/)
