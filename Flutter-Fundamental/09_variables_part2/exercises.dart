// ============================================
// 09 — Variables Part 2 | Exercises
// ============================================

void main() {
  // Exercise 1:
  // Declare a 'final' variable for today's date using DateTime.now().
  // Print it.
  // YOUR CODE HERE:


  // Exercise 2:
  // Declare these as 'const' variables and print them:
  // - gravity: 9.8
  // - speedOfLight: 299792458
  // - appName: "DartLearn"
  // YOUR CODE HERE:


  // Exercise 3:
  // Try changing a 'final' variable after setting it.
  // Comment out the error line and write what error you got.
  final String language = "Dart";
  // language = "Python";  // What error do you see?
  // Error: _______________
  print(language);


  // Exercise 4:
  // Which should be final, const, or regular variable?
  // Write the correct keyword next to each:
  // ??? String userName = "Ahmed";        // changes per user
  // ??? double taxRate = 0.14;            // fixed for this year
  // ??? DateTime loginTime = DateTime.now(); // when user logs in
  // ??? int maxRetries = 3;               // never changes
}
