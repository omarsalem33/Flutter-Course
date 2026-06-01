// ============================================
// 32 — Logical Operators | Tasks
// ============================================

void main() {
  // Task 1: Amusement Park Ride
  // A person can ride if:
  // - height >= 140 cm AND age >= 10
  // - OR they have a parent with them (hasParent = true)
  // Print "Can ride! 🎢" or "Cannot ride"
  int height = 130;
  int age = 8;
  bool hasParent = true;
  // YOUR CODE HERE:


  // Task 2: Online Order
  // An order can be placed if:
  // - item is in stock (isInStock = true)
  // - AND payment method is valid (isPaymentValid = true)
  // - AND the user is NOT banned (isBanned = false)
  // Print the result
  bool isInStock = true;
  bool isPaymentValid = true;
  bool isBanned = false;
  // YOUR CODE HERE:


  // Task 3: Truth Table Generator
  // Given two boolean values, print the AND, OR, and NOT results
  // in a formatted way:
  // "true AND false = false"
  // "true OR false = true"
  // "NOT true = false"
  bool p = true;
  bool q = false;
  // YOUR CODE HERE:


  // Task 4: Security System
  // An alarm should trigger if:
  // - it's nighttime (isNight = true) AND motion is detected (motionDetected = true)
  // - OR if a door is opened (doorOpened = true) AND the system is NOT disarmed
  // Print "🚨 ALARM!" or "All clear ✅"
  bool isNight = true;
  bool motionDetected = false;
  bool doorOpened = true;
  bool isDisarmed = false;
  // YOUR CODE HERE:
}
