# 03 — Encapsulation Part 3

## 🎯 Learning Objectives
By the end of this lesson, you will be able to:
- Combine private variables and methods to build fully encapsulated classes
- Understand read-only and write-controlled access patterns
- Design classes with clean public interfaces

---

## 📖 Explanation

Now let's put everything together. A fully encapsulated class has:
1. **Private data** (variables with `_`)
2. **Private helpers** (methods with `_`)
3. **Clean public interface** (only what outsiders need)

### Design Pattern: Controlled Access

```dart
class BankAccount {
  String _owner;
  double _balance;
  List<String> _transactions = [];

  BankAccount(this._owner, this._balance);

  // Private: internal logic
  void _recordTransaction(String type, double amount) {
    _transactions.add("$type: \$${amount}");
  }

  bool _isValidAmount(double amount) {
    return amount > 0;
  }

  // Public: controlled interface
  void deposit(double amount) {
    if (_isValidAmount(amount)) {
      _balance += amount;
      _recordTransaction("Deposit", amount);
      print("Deposited \$${amount}");
    }
  }

  void withdraw(double amount) {
    if (_isValidAmount(amount) && amount <= _balance) {
      _balance -= amount;
      _recordTransaction("Withdrawal", amount);
      print("Withdrawn \$${amount}");
    } else {
      print("Cannot withdraw \$${amount}");
    }
  }

  void printStatement() {
    print("=== Account: $_owner ===");
    print("Balance: \$${_balance}");
    print("Transactions:");
    for (var t in _transactions) {
      print("  - $t");
    }
  }
}