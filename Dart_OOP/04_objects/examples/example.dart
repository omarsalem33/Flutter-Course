// ============================================
// 04 — Objects | Example
// ============================================
// This example demonstrates creating objects,
// accessing and modifying their attributes.
// ============================================

class Student {
  String name = "";
  int age = 0;
  double gpa = 0.0;
  String major = "Undeclared";
  bool isActive = true;
}

class Product {
  String name = "";
  double price = 0.0;
  int stock = 0;
  String category = "";
}

void main() {
  // ---- Creating Student Objects ----
  print("=== Students ===");

  Student student1 = Student();
  student1.name = "Ahmed";
  student1.age = 20;
  student1.gpa = 3.7;
  student1.major = "Computer Science";

  Student student2 = Student();
  student2.name = "Sara";
  student2.age = 22;
  student2.gpa = 3.9;
  student2.major = "Data Science";

  // Printing student info
  print("${student1.name} | Age: ${student1.age} | GPA: ${student1.gpa} | Major: ${student1.major}");
  print("${student2.name} | Age: ${student2.age} | GPA: ${student2.gpa} | Major: ${student2.major}");

  // ---- Creating Product Objects ----
  print("\n=== Products ===");

  Product laptop = Product();
  laptop.name = "MacBook Pro";
  laptop.price = 1999.99;
  laptop.stock = 25;
  laptop.category = "Electronics";

  Product book = Product();
  book.name = "Dart Programming";
  book.price = 39.99;
  book.stock = 100;
  book.category = "Books";

  // Printing product info
  print("${laptop.name} | \$${laptop.price} | Stock: ${laptop.stock}");
  print("${book.name} | \$${book.price} | Stock: ${book.stock}");

  // ---- Modifying attributes ----
  print("\n=== After Updates ===");

  student1.gpa = 3.8; // GPA improved!
  laptop.stock = 23;  // 2 laptops sold

  print("${student1.name}'s new GPA: ${student1.gpa}");
  print("${laptop.name} remaining stock: ${laptop.stock}");
}
