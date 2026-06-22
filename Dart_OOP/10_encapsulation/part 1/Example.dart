class BankAccount {
  String _accountHolder;
  double _balance;

  BankAccount(this._accountHolder, this._balance);

  void showBalance() {
    print("$_accountHolder has \$${_balance}");
  }
}

void main() {
  var account = BankAccount("Omar", 5000.0);
  account.showBalance(); // ✅ Works — uses public method
  // account._balance = 0; // ⚠️ Should not access private directly
}