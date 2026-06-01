// ============================================
// 45 — For In Loop | Tasks
// ============================================

void main() {
  // Task 1: Shopping Cart Total
  // Calculate the total price of all items.
  List<Map<String, dynamic>> cart = [
    {"name": "Shirt", "price": 250.0, "qty": 2},
    {"name": "Pants", "price": 400.0, "qty": 1},
    {"name": "Shoes", "price": 600.0, "qty": 1},
    {"name": "Socks", "price": 50.0, "qty": 3},
  ];
  // YOUR CODE HERE:


  // Task 2: Count Occurrences
  // Count how many times each word appears using a Map.
  List<String> words = ["dart", "flutter", "dart", "code", "flutter", "dart"];
  Map<String, int> wordCount = {};
  // YOUR CODE HERE:


  // Task 3: Grade Report
  // Given a map of student → score, print a report with grades.
  // 90+: A, 80-89: B, 70-79: C, 60-69: D, <60: F
  Map<String, int> students = {
    "Omar": 92,
    "Sara": 85,
    "Ali": 67,
    "Nour": 73,
    "Youssef": 55,
  };
  // YOUR CODE HERE:


  // Task 4: Common Elements
  // Find elements that exist in BOTH lists.
  List<int> list1 = [1, 3, 5, 7, 9, 11];
  List<int> list2 = [2, 3, 5, 8, 11, 13];
  List<int> common = [];
  // YOUR CODE HERE:
}
