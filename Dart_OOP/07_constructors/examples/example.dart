// ============================================
// 07 — Constructors | Example
// ============================================
// This example demonstrates default, positional,
// and named constructors in Dart.
// ============================================

// --- Shorthand Constructor ---
class Student {
  String name;
  int age;
  double gpa;

  Student(this.name, this.age, this.gpa);

  void display() {
    print("$name | Age: $age | GPA: $gpa");
  }
}

// --- Named Parameters Constructor ---
class Course {
  String title;
  String instructor;
  int hours;
  double price;

  Course({
    required this.title,
    required this.instructor,
    this.hours = 10,
    this.price = 0.0,
  });

  void display() {
    print("$title by $instructor | ${hours}h | \$${price.toStringAsFixed(2)}");
  }
}

// --- Optional Positional Parameters ---
class Task {
  String title;
  int priority;
  bool isCompleted;

  Task(this.title, [this.priority = 1, this.isCompleted = false]);

  String get priorityLabel {
    switch (priority) {
      case 3:
        return "High";
      case 2:
        return "Medium";
      default:
        return "Low";
    }
  }

  void display() {
    String status = isCompleted ? "Done" : "Pending";
    print("[$priorityLabel] $title — $status");
  }
}

void main() {
  // --- Students (positional constructor) ---
  print("=== Students ===");
  List<Student> students = [
    Student("Ahmed", 20, 3.7),
    Student("Sara", 22, 3.9),
    Student("Khalid", 21, 3.5),
  ];

  for (Student s in students) {
    s.display();
  }

  // --- Courses (named parameters) ---
  print("\n=== Courses ===");
  Course dart = Course(
    title: "Dart Programming",
    instructor: "Dr. Omar",
    hours: 20,
    price: 49.99,
  );

  Course flutter = Course(
    title: "Flutter Basics",
    instructor: "Dr. Ahmed",
    // hours and price use defaults
  );

  dart.display();
  flutter.display();

  // --- Tasks (optional positional) ---
  print("\n=== Tasks ===");
  Task t1 = Task("Buy groceries");           // priority=1, isCompleted=false
  Task t2 = Task("Submit homework", 3);       // isCompleted=false
  Task t3 = Task("Clean desk", 2, true);      // all specified

  t1.display();
  t2.display();
  t3.display();
}
