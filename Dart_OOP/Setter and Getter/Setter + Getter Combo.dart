class BankAccount {
  String _owner = "";
  double _balance = 0.0;
  double _interestRate = 0.01;

  // Getter: read-only access
  double get balance => _balance;

  double get interestRate => _interestRate;

  // Setter: controlled write access
 