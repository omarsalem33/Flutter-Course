// ============================================
// 47 — Functions Overview | Exercises
// ============================================

// Exercise 1: Identify parts
// Look at this function and identify:
// - Return type
// - Function name
// - Parameters
// - Return value
double calculateDiscount(double price, double percent) {
  return price * percent / 100;
}

// Exercise 2: Why functions?
// The code below repeats. Identify what should be turned into a function.
// (Don't write the function yet — just write a comment describing it)
void main() {
  // Repeated code:
  String name1 = "Omar";
  print("=================");
  print("Welcome, $name1!");
  print("=================");

  String name2 = "Sara";
  print("=================");
  print("Welcome, $name2!");
  print("=================");

  // What function would you create?
  // YOUR ANSWER (as a comment):


  // Exercise 3: Match the type
  // For each scenario, write what return type and parameters the function needs:
  // a) Add two numbers → Return type: ?, Parameters: ?
  // b) Print a greeting → Return type: ?, Parameters: ?
  // c) Check if number is even → Return type: ?, Parameters: ?
  // d) Get full name from first and last → Return type: ?, Parameters: ?


  // Exercise 4: Call existing function
  // Call the calculateDiscount function above with:
  // price = 500, percent = 20
  // Print the result.
  // YOUR CODE HERE:


  // Exercise 5: Identify function types
  // Classify each function below:
  // a) void sayBye() { print("Bye!"); }
  // b) int square(int n) { return n * n; }
  // c) void showAge(int age) { print("Age: $age"); }
  // d) String getGreeting() { return "Hello!"; }
  // Write: "no params/no return", "params/no return", "params/return", "no params/return"
}
