class Product {
  String _name = "";
  double _price = 0.0;

  set name(String value) {
    _name = value.trim().toUpperCase(); // Store in uppercase
  }

  set price(double value) {
    _price = value < 0 ? 0 : value; // No negative prices
  }

  String get name => _name;
  double get price => _price;
}

void main() {
  Product p = Product();
  p.name = "  laptop  ";   // Stored as "LAPTOP"
  p.price = -10.99;        // Stored as 0.0
  print(p.name);           // LAPTOP
  print(p.price);          // 0.0
}