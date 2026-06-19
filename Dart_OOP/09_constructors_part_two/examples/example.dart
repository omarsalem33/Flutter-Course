// ============================================
// 09 — Constructors Part Two | Example
// ============================================
// Demonstrates named, redirecting, initializer
// list, and factory constructors.
// ============================================

// --- Named Constructors & Initializer Lists ---
class Color {
  final int red;
  final int green;
  final int blue;
  final String hex;

  // Main constructor with initializer list
  Color(this.red, this.green, this.blue)
      : hex = '#${red.toRadixString(16).padLeft(2, '0')}'
            '${green.toRadixString(16).padLeft(2, '0')}'
            '${blue.toRadixString(16).padLeft(2, '0')}';

  // Redirecting named constructors
  Color.red() : this(255, 0, 0);
  Color.green() : this(0, 255, 0);
  Color.blue() : this(0, 0, 255);
  Color.white() : this(255, 255, 255);
  Color.black() : this(0, 0, 0);

  // Named constructor with custom logic
  Color.fromHex(String hexColor)
      : red = int.parse(hexColor.substring(1, 3), radix: 16),
        green = int.parse(hexColor.substring(3, 5), radix: 16),
        blue = int.parse(hexColor.substring(5, 7), radix: 16),
        hex = hexColor;

  void display() {
    print("RGB($red, $green, $blue) → $hex");
  }
}

// --- Factory Constructor: Singleton ---
class AppConfig {
  static AppConfig? _instance;

  final String appName;
  final String version;
  String theme;

  AppConfig._internal(this.appName, this.version, this.theme);

  factory AppConfig({String theme = "light"}) {
    _instance ??= AppConfig._internal("MyApp", "1.0.0", theme);
    return _instance!;
  }

  void display() {
    print("$appName v$version | Theme: $theme");
  }
}

// --- Factory Constructor: fromJson ---
class Product {
  final String name;
  final double price;
  final String category;
  final bool inStock;

  Product(this.name, this.price, this.category, this.inStock);

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['name'] as String,
      (json['price'] as num).toDouble(),
      json['category'] as String,
      json['inStock'] as bool,
    );
  }

  void display() {
    String status = inStock ? "In Stock" : "Out of Stock";
    print("$name | \$${price.toStringAsFixed(2)} | $category | $status");
  }
}

void main() {
  // --- Named Constructors ---
  print("=== Colors ===");
  Color c1 = Color(128, 64, 200);
  Color c2 = Color.red();
  Color c3 = Color.white();
  Color c4 = Color.fromHex("#FF8C00");

  c1.display();
  c2.display();
  c3.display();
  c4.display();

  // --- Singleton Factory ---
  print("\n=== App Config (Singleton) ===");
  AppConfig config1 = AppConfig(theme: "dark");
  AppConfig config2 = AppConfig(theme: "light"); // Returns same instance!

  config1.display();
  print("Same instance? ${identical(config1, config2)}"); // true

  // --- fromJson Factory ---
  print("\n=== Products from JSON ===");
  List<Map<String, dynamic>> jsonProducts = [
    {'name': 'Laptop', 'price': 999.99, 'category': 'Electronics', 'inStock': true},
    {'name': 'Headphones', 'price': 79.99, 'category': 'Electronics', 'inStock': true},
    {'name': 'Desk Chair', 'price': 249.50, 'category': 'Furniture', 'inStock': false},
  ];

  List<Product> products = jsonProducts.map((json) => Product.fromJson(json)).toList();

  for (Product p in products) {
    p.display();
  }
}
