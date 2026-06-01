// ============================================
// 47 — Functions Overview | Tasks
// ============================================

// Task 1: Spot the repetition
// This program calculates tax for 3 different amounts.
// Identify the repeated logic and explain what function you'd create.
// (Write your answer as comments, then create the function and refactor)
void main() {
  double amount1 = 1000;
  double tax1 = amount1 * 0.14;
  double total1 = amount1 + tax1;
  print("Amount: $amount1, Tax: $tax1, Total: $total1");

  double amount2 = 2500;
  double tax2 = amount2 * 0.14;
  double total2 = amount2 + tax2;
  print("Amount: $amount2, Tax: $tax2, Total: $total2");

  double amount3 = 750;
  double tax3 = amount3 * 0.14;
  double total3 = amount3 + tax3;
  print("Amount: $amount3, Tax: $tax3, Total: $total3");

  // YOUR REFACTORED CODE USING A FUNCTION:


  // Task 2: Plan Your Functions
  // You're building a simple grade system. List the functions you'd need:
  // (Write your plan as comments — function name, parameters, return type)
  // Scenarios to handle:
  // - Calculate average of scores
  // - Convert average to letter grade
  // - Print a student report
  // YOUR PLAN:


  // Task 3: Function Signatures
  // Write ONLY the function signature (no body) for each:
  // a) A function that takes a temperature in Celsius and returns Fahrenheit
  // b) A function that takes a name and prints a birthday message
  // c) A function that takes a list of ints and returns the sum
  // d) A function that returns the current greeting based on hour (int)
  // YOUR CODE HERE:


  // Task 4: Organize This Code
  // This code does 3 things. Split it into 3 functions and call them from main.
  // 1. Calculate BMI from weight and height
  // 2. Determine BMI category
  // 3. Print the result
  double weight = 70;
  double height = 1.75;
  double bmi = weight / (height * height);
  String category;
  if (bmi < 18.5) {
    category = "Underweight";
  } else if (bmi < 25) {
    category = "Normal";
  } else if (bmi < 30) {
    category = "Overweight";
  } else {
    category = "Obese";
  }
  print("BMI: ${bmi.toStringAsFixed(1)} — $category");
  // YOUR REFACTORED CODE:
}
