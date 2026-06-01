// ============================================
// 37 — Null Safety Part One | Tasks
// ============================================

void main() {
  // Task 1: User Profile
  // Create a user profile with:
  // - name (non-nullable String)
  // - email (nullable String)
  // - phone (nullable String)
  // - age (non-nullable int)
  // Print the profile, showing "Not provided" for null fields.
  // YOUR CODE HERE:


  // Task 2: Safe Division
  // Given two nullable doubles, perform division only if:
  // - Both values are not null
  // - The divisor is not zero
  // Print the result or an appropriate error message.
  double? numerator = 100;
  double? denominator;
  // YOUR CODE HERE:


  // Task 3: Student Record
  // A student has:
  // - name (non-nullable)
  // - midtermScore (nullable - might not have taken it yet)
  // - finalScore (nullable - might not have taken it yet)
  // Calculate average only if both scores exist.
  // Print "Incomplete" if any score is missing.
  String name = "Sara";
  int? midtermScore = 85;
  int? finalScore;
  // YOUR CODE HERE:


  // Task 4: Nullable Chain
  // Given three nullable values, find and print the first non-null one.
  // If all are null, print "All values are null".
  String? first;
  String? second;
  String? third = "Found it!";
  // YOUR CODE HERE:
}
