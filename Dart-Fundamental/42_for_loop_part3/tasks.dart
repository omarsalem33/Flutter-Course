// ============================================
// 42 — For Loop Part Three | Tasks
// ============================================

void main() {
  // Task 1: Caesar Cipher
  // Shift each letter in the string by 3 positions.
  // 'A' → 'D', 'B' → 'E', ..., 'X' → 'A', 'Y' → 'B', 'Z' → 'C'
  // Only shift uppercase letters, keep others as-is.
  // Hint: use codeUnits and String.fromCharCode
  String message = "HELLO DART";
  // YOUR CODE HERE:


  // Task 2: Remove Duplicates
  // Given a list, create a new list with no duplicates.
  List<int> numbers = [1, 3, 5, 3, 7, 1, 9, 5, 3];
  List<int> unique = [];
  // YOUR CODE HERE:


  // Task 3: Matrix Search
  // Find a value in a 2D list (list of lists).
  // Print its position (row, col) or "Not found".
  // Use labeled break.
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  int searchFor = 5;
  // YOUR CODE HERE:


  // Task 4: Word Counter
  // Count the number of words in a sentence.
  // Words are separated by spaces. Multiple spaces should count as one separator.
  String sentence = "  Dart  is   really   fun  ";
  // YOUR CODE HERE:
}
