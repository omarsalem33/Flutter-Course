// ============================================
// 34 — Nested If | Tasks
// ============================================

void main() {
  // Task 1: Restaurant Order
  // Level 1: Check if the restaurant is open (isOpen)
  // Level 2: Check if the item is available (isAvailable)
  // Level 3: Check if the user has enough money (balance >= price)
  // Print messages at each level
  bool isOpen = true;
  bool isAvailable = true;
  double balance = 150.0;
  double price = 120.0;
  // YOUR CODE HERE:


  // Task 2: Student Scholarship
  // Check eligibility step by step:
  // 1. GPA >= 3.0
  // 2. If yes, check if credits >= 60
  // 3. If yes, check if extracurricular activities >= 2
  // Award: Full scholarship (all 3), Partial (first 2), None
  double gpa = 3.5;
  int credits = 75;
  int activities = 1;
  // YOUR CODE HERE:


  // Task 3: E-commerce Checkout
  // Nested validation:
  // 1. Is the cart not empty? (cartItems > 0)
  // 2. Is the shipping address provided? (hasAddress)
  // 3. Is the payment valid? (isPaymentValid)
  // 4. Is the total within credit limit? (total <= creditLimit)
  // Print status at each step
  int cartItems = 3;
  bool hasAddress = true;
  bool isPaymentValid = true;
  double total = 2500.0;
  double creditLimit = 5000.0;
  // YOUR CODE HERE:
}
