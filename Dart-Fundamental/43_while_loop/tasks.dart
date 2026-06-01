// ============================================
// 43 — While Loop | Tasks
// ============================================

void main() {
  // Task 1: Number Guessing Game (Simulation)
  // The secret number is 7.
  // Simulate guesses: [3, 9, 5, 7, 2]
  // Use a while loop to keep guessing until correct.
  // Print "Too low", "Too high", or "Correct!" for each guess.
  int secret = 7;
  List<int> guesses = [3, 9, 5, 7, 2];
  // YOUR CODE HERE:


  // Task 2: Collatz Conjecture
  // Start with any number.
  // If even: divide by 2.
  // If odd: multiply by 3 and add 1.
  // Continue until you reach 1. Count the steps.
  int n = 27;
  // YOUR CODE HERE:


  // Task 3: GCD (Greatest Common Divisor)
  // Use Euclid's algorithm:
  // While b != 0: temp = b, b = a % b, a = temp
  // The GCD is the final value of a.
  int a = 48;
  int b = 18;
  // YOUR CODE HERE:


  // Task 4: Bank Interest
  // Starting balance: 1000 EGP, annual interest: 5%
  // How many years until the balance doubles (reaches 2000)?
  double balance = 1000.0;
  double rate = 0.05;
  double target = 2000.0;
  // YOUR CODE HERE:
}
