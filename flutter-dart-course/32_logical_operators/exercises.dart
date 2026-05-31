// ============================================
// 32 — Logical Operators | Exercises
// ============================================

void main() {
  // Exercise 1: AND operator
  // Print the result of the following:
  print(true && true);
  print(true && false);
  print(false && false);
  // What do you notice?


  // Exercise 2: OR operator
  // Print the result of the following:
  print(true || true);
  print(true || false);
  print(false || false);
  // What do you notice?


  // Exercise 3: NOT operator
  // What is the output?
  bool isOpen = true;
  print(!isOpen);
  print(!!isOpen);  // double NOT


  // Exercise 4: Combined operators
  // Predict the output before running:
  int x = 10;
  int y = 20;
  bool a = x > 5 && y < 25;
  bool b = x > 15 || y > 15;
  bool c = !(x == 10);
  print("a = $a");
  print("b = $b");
  print("c = $c");


  // Exercise 5: Complex expression
  // Predict the result, then verify:
  bool result = (5 > 3) && (10 != 10) || !(false);
  print(result);
  // Break it down step by step
}
