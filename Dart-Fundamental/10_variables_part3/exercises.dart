// ============================================
// 10 — Variables Part 3 | Exercises
// ============================================

void main() {
  // Exercise 1:
  // Declare a nullable String for middleName (not everyone has one).
  // Print it when null, then assign a value and print again.
  // YOUR CODE HERE:


  // Exercise 2:
  // Use the ?? operator:
  String? city = null;
  // Print city, but if it's null, print "Unknown City" instead.
  // YOUR CODE HERE:


  // Exercise 3:
  // Use the ?. operator to safely call .length on a nullable string:
  String? message = "Hello Dart";
  // Print the length using ?. (safe access)
  // Then set message = null and try again — what prints?
  // YOUR CODE HERE:


  // Exercise 4:
  // Declare a 'late' variable for userName.
  // Initialize it after 5 print statements, then print it.
  late String userName;
  print("Step 1");
  print("Step 2");
  print("Step 3");
  print("Step 4");
  print("Step 5");
  // Initialize here:
  // YOUR CODE HERE:
  // Print here:
  // YOUR CODE HERE:
}
