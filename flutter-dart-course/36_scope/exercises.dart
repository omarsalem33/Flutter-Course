// ============================================
// 36 — Scope | Exercises
// ============================================

void main() {
  // Exercise 1: Local scope
  // Predict: will this code work? Why or why not?
  // Uncomment and test:
  // if (true) {
  //   int localVar = 100;
  // }
  // print(localVar);


  // Exercise 2: Outer scope access
  // Declare a variable in main scope, then access it inside an if block.
  // YOUR CODE HERE:


  // Exercise 3: Fix the scope error
  // This code has a scope error. Fix it so it prints the result.
  // int result;
  // if (10 > 5) {
  //   result = 10 * 5;
  // }
  // print("Result: $result");
  // YOUR CODE HERE:


  // Exercise 4: Variable shadowing
  // What will be the output? Predict first, then run.
  int value = 100;
  print("Before if: $value");
  if (true) {
    int value = 200;
    print("Inside if: $value");
  }
  print("After if: $value");


  // Exercise 5: Scope boundaries
  // Declare a String variable that can be used in BOTH the if and else blocks,
  // AND also after the if-else.
  int age = 20;
  // YOUR CODE HERE:
  // if (age >= 18) {
  //   ... = "Adult";
  // } else {
  //   ... = "Minor";
  // }
  // print(...);
}
