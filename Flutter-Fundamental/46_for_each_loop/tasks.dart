// ============================================
// 46 — For Each Loop | Tasks
// ============================================

void main() {
  // Task 1: Student Greeting
  // Given a list of student names, print "Welcome, [name]!" for each.
  // If the name is "Admin", print "Hello, Admin! 👑" instead.
  List<String> students = ["Omar", "Sara", "Admin", "Ali", "Nour"];
  // YOUR CODE HERE:


  // Task 2: Inventory Report
  // Print a formatted inventory report.
  // Calculate and print the total value (price * quantity) for each item
  // and the grand total at the end.
  Map<String, Map<String, num>> inventory = {
    "Laptop": {"price": 15000, "qty": 5},
    "Mouse": {"price": 200, "qty": 50},
    "Keyboard": {"price": 500, "qty": 30},
    "Monitor": {"price": 5000, "qty": 10},
  };
  // YOUR CODE HERE:


  // Task 3: Filter and Transform
  // Given a list of numbers:
  // 1. Use forEach to collect only even numbers into a new list
  // 2. Use forEach on the new list to print each number squared
  List<int> data = [3, 8, 15, 22, 7, 36, 41, 12];
  // YOUR CODE HERE:


  // Task 4: Sentence Builder
  // Given a list of words, build a sentence using forEach.
  // Capitalize the first word and add a period at the end.
  List<String> words = ["dart", "is", "a", "great", "language"];
  // YOUR CODE HERE:
}
