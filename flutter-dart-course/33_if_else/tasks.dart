// ============================================
// 33 — If Else | Tasks
// ============================================

void main() {
  // Task 1: Electricity Bill Calculator
  // Consumption rates:
  // 0-100 units: 0.50 EGP/unit
  // 101-300 units: 0.75 EGP/unit
  // 301-500 units: 1.00 EGP/unit
  // 500+ units: 1.50 EGP/unit
  // Calculate and print the total bill.
  int units = 250;
  // YOUR CODE HERE:


  // Task 2: Day Type
  // Given a day name, use else if to print:
  // "Weekend" for Saturday/Sunday
  // "Work day" for Monday-Friday
  // "Invalid day" for anything else
  String day = "Wednesday";
  // YOUR CODE HERE:


  // Task 3: ATM Withdrawal
  // Check if the user can withdraw:
  // - If amount <= 0: "Invalid amount"
  // - If amount > balance: "Insufficient funds"
  // - If amount > 5000: "Exceeds daily limit"
  // - Otherwise: subtract and print new balance
  double balance = 3000.0;
  double amount = 2500.0;
  // YOUR CODE HERE:


  // Task 4: Age Category (using ternary + else if)
  // 0-2: "Baby", 3-12: "Child", 13-17: "Teenager", 18-64: "Adult", 65+: "Senior"
  // Use else if for the category, then use ternary to check if they can vote (18+)
  int age = 16;
  // YOUR CODE HERE:
}
