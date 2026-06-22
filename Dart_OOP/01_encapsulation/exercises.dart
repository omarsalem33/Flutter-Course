// ============================================
// 01 — Encapsulation | Exercises
// ============================================
// Follow each exercise step by step.
// ============================================

// Exercise 1:
// Create a class called `Person` with a private variable `_name`.
// Add a method `showName()` that prints the name.

class Person {
  String _name;

  Person(this._name);

  void showName() {
    print("Name: $_name");
  }
}

// Exercise 2:
// Create a class `Car` with private variables `_brand` and `_speed`.
// Add a method `displayInfo()` that prints both values.

class Car {
  String _brand;
  int _speed;

  Car(this._brand, this._speed);

  void displayInfo() {
    print("Brand: $_brand, Speed: $_speed km/h");
  }
}

// Exercise 3:
// Create a class `Wallet` with a private variable `_money`.
// Add a method `addMoney(double amount)` that increases the balance.
// Add a method `showBalance()` that prints the current balance.

class Wallet {
  double _money;

  Wallet(this._money);

  void addMoney(double amount) {
    _money += amount;
    print("Added \$${amount}. New balance: \$${_money}");
  }

  void showBalance() {
    print("Balance: \$${_money}");
  }
}

void main() {
  // Test Exercise 1
  print("--- Exercise 1 ---");
  var person = Person("Ahmed");
  person.showName();

  // Test Exercise 2
  print("\n--- Exercise 2 ---");
  var car = Car("Toyota", 180);
  car.displayInfo();

  // Test Exercise 3
  print("\n--- Exercise 3 ---");
  var wallet = Wallet(100.0);
  wallet.showBalance();
  wallet.addMoney(50.0);
  wallet.showBalance();
}
