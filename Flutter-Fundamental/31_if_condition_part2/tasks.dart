// ============================================
// 31 — If Condition Part Two | Tasks
// ============================================

void main() {
  // Task 1: Exam Eligibility
  // A student can take the exam if:
  // - attendance >= 75% AND assignmentsCompleted >= 3
  // Print whether they are eligible or not.
  int attendance = 80;
  int assignmentsCompleted = 4;
  // YOUR CODE HERE:


  // Task 2: Flight Booking
  // A passenger can board if:
  // - hasTicket is true AND hasPassport is true
  // - AND (isOnTime is true OR hasPriorityBoarding is true)
  bool hasTicket = true;
  bool hasPassport = true;
  bool isOnTime = false;
  bool hasPriorityBoarding = true;
  // YOUR CODE HERE:


  // Task 3: Loan Approval
  // Approve a loan if:
  // - salary >= 5000 AND creditScore >= 700
  // - OR if they have a guarantor (hasGuarantor is true)
  double salary = 4000;
  int creditScore = 650;
  bool hasGuarantor = true;
  // YOUR CODE HERE:


  // Task 4: Smart Home
  // Turn on the heater if:
  // - temperature < 20 AND isHome is true AND heater is NOT broken
  // Print "Heater ON 🔥" or "Heater stays OFF"
  double temperature = 15;
  bool isHome = true;
  bool isHeaterBroken = false;
  // YOUR CODE HERE:
}
