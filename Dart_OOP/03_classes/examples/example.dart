// ============================================
// 03 — Classes | Example
// ============================================
// This example shows how to define classes
// with various attributes.
// ============================================

// A simple class with basic attributes
class Student {
  String name = "";
  int age = 0;
  double gpa = 0.0;
  bool isEnrolled = true;
  String major = "Undeclared";
}

// A more detailed class
class SmartPhone {
  String brand = "";
  String model = "";
  int storageGB = 64;
  double screenSize = 6.1;
  bool hasFingerprint = true;
  int batteryCapacity = 4000; // mAh
  String operatingSystem = "";
  double price = 0.0;
}

// A class for a real app scenario
class Task {
  String title = "";
  String description = "";
  bool isCompleted = false;
  int priority = 1; // 1=low, 2=medium, 3=high
  String category = "General";
  String dueDate = "";
}

void main() {
  // Note: For now, we're just looking at class definitions.
  // In the next lesson, we'll learn how to create OBJECTS from these classes!

  print("=== Class Definitions ===");
  print("We defined 3 classes:");
  print("1. Student - with name, age, gpa, isEnrolled, major");
  print("2. SmartPhone - with brand, model, storage, screen, etc.");
  print("3. Task - with title, description, isCompleted, priority, etc.");
  print("");
  print("Remember: These are blueprints, not objects yet!");
  print("Next lesson: Creating objects from these blueprints.");
}
