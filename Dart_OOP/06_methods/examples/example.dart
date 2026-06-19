// ============================================
// 06 — Methods | Example
// ============================================
// This example demonstrates different types
// of methods: void, with params, with return
// values, and using object attributes.
// ============================================

class BankAccount {
  String owner = "";
  double balance = 0.0;
  List<String> transactions = [];

  // Method with no params, no return
  void displayBalance() {
    print("$owner's balance: \$${balance.toStringAsFixed(2)}");
  }

  // Method with params, no return
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      transactions.add("+ \$${amount.toStringAsFixed(2)}");
      print("Deposited \$${amount.toStringAsFixed(2)}");
    } else {
      print("Invalid amount!");
    }
  }

  // Method with params and return value
  bool withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      transactions.add("- \$${amount.toStringAsFixed(2)}");
      print("Withdrew \$${amount.toStringAsFixed(2)}");
      return true;
    } else {
      print("Cannot withdraw \$${amount.toStringAsFixed(2)}");
      return false;
    }
  }

  // Method with return value
  int getTransactionCount() {
    return transactions.length;
  }

  // Method that uses other methods
  void transferTo(BankAccount other, double amount) {
    if (withdraw(amount)) {
      other.deposit(amount);
      print("Transfer complete: \$$amount to ${other.owner}");
    } else {
      print("Transfer failed!");
    }
  }

  // Method that returns a String
  String getSummary() {
    return """
    --- Account Summary ---
    Owner: $owner
    Balance: \$${balance.toStringAsFixed(2)}
    Transactions: ${transactions.length}
    History: ${transactions.join(', ')}
    """;
  }
}

void main() {
  // Create accounts
  BankAccount ahmed = BankAccount();
  ahmed.owner = "Ahmed";
  ahmed.balance = 5000.0;

  BankAccount sara = BankAccount();
  sara.owner = "Sara";
  sara.balance = 3000.0;

  // Use methods
  print("=== Banking Demo ===\n");

  ahmed.displayBalance();
  ahmed.deposit(1500.0);
  ahmed.withdraw(800.0);
  ahmed.withdraw(10000.0); // Will fail

  print("");
  ahmed.transferTo(sara, 500.0);

  print("");
  print(ahmed.getSummary());
  print(sara.getSummary());

  print("Ahmed's transactions: ${ahmed.getTransactionCount()}");
  print("Sara's transactions: ${sara.getTransactionCount()}");
}
