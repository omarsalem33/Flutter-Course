// ============================================
// 08 — More on Attributes | Example
// ============================================
// Demonstrates: instance, static, final, const,
// and late attributes.
// ============================================

class Employee {
  // --- final: set once at creation ---
  final String id;
  final String name;

  // --- instance: each object has its own ---
  String department;
  double salary;

  // --- static: shared across all objects ---
  static int totalEmployees = 0;
  static double totalSalaryBudget = 0;

  // --- static const: compile-time constants ---
  static const double minSalary = 3000.0;
  static const double maxSalary = 50000.0;
  static const String company = "TechCorp";

  Employee(this.id, this.name, this.department, this.salary) {
    totalEmployees++;
    totalSalaryBudget += salary;
  }

  void display() {
    print("[$id] $name | $department | \$${salary.toStringAsFixed(2)}");
  }

  // --- static method ---
  static void displayCompanyInfo() {
    print("Company: $company");
    print("Total Employees: $totalEmployees");
    print("Total Salary Budget: \$${totalSalaryBudget.toStringAsFixed(2)}");
    print("Salary Range: \$$minSalary - \$$maxSalary");
  }
}

// --- late example ---
class DatabaseService {
  late String connectionUrl;
  late int port;
  bool isConnected = false;

  void connect(String host, int p) {
    connectionUrl = "postgresql://$host";
    port = p;
    isConnected = true;
    print("Connected to $connectionUrl:$port");
  }

  void query(String sql) {
    if (!isConnected) {
      print("Error: Not connected!");
      return;
    }
    print("Executing: $sql on $connectionUrl");
  }
}

void main() {
  print("=== Employee System ===\n");

  // Create employees with final IDs
  Employee e1 = Employee("E001", "Ahmed", "Engineering", 8000);
  Employee e2 = Employee("E002", "Sara", "Design", 7500);
  Employee e3 = Employee("E003", "Khalid", "Marketing", 6500);

  // Display each employee
  e1.display();
  e2.display();
  e3.display();

  // Cannot change final attributes:
  // e1.id = "E999";   // ❌ Error — final!
  // e1.name = "Ali";  // ❌ Error — final!

  // CAN change non-final attributes:
  e1.salary = 8500;
  print("\nAhmed got a raise!");
  e1.display();

  // Static: company-wide information
  print("");
  Employee.displayCompanyInfo();

  // --- late demo ---
  print("\n=== Database Demo ===\n");

  DatabaseService db = DatabaseService();
  db.query("SELECT * FROM users"); // Error: Not connected!

  db.connect("localhost", 5432);
  db.query("SELECT * FROM users"); // Works now!
}
