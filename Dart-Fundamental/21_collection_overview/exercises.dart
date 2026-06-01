// ============================================
// 21 — Collection Overview | Exercises
// ============================================

void main() {
  // Exercise 1: Create one of each collection type with at least 3 items.
  // YOUR CODE HERE:


  // Exercise 2: What collection would you use for each?
  // Print your answer for each case:
  // - A list of student names in a class (order matters)
  // - The set of countries a person has visited (no repeats)
  // - A dictionary of word → definition
  // - Days of the week
  // - Unique colors in a painting
  // YOUR CODE HERE:


  // Exercise 3: Add a duplicate to a List vs a Set and compare:
  List<String> myList = ["a", "b"];
  Set<String> mySet = {"a", "b"};
  myList.add("a");   // adds duplicate
  mySet.add("a");    // tries to add duplicate
  print(myList);     // What prints?
  print(mySet);      // What prints? Note the difference!
}
