# 08 — More on Attributes | Exercises

## Exercise 1: Instance vs Static
What will this code print?

```dart
class Player {
  String name;
  int score;
  static int totalPlayers = 0;

  Player(this.name, this.score) {
    totalPlayers++;
  }
}

void main() {
  Player p1 = Player("Ahmed", 100);
  Player p2 = Player("Sara", 200);
  Player p3 = Player("Khalid", 150);

  print(Player.totalPlayers);
  print(p1.name);
  print(p2.score);
}
```

Your answer:
```
Line 1: ___
Line 2: ___
Line 3: ___
```

---

## Exercise 2: Final Attributes
Which lines will cause an error? Mark with ❌:

```dart
class User {
  final String id;
  final String email;
  String displayName;

  User(this.id, this.email, this.displayName);
}

void main() {
  User u = User("U001", "ahmed@mail.com", "Ahmed");

  u.displayName = "Ahmed K.";    // Line A: ___
  u.email = "new@mail.com";      // Line B: ___
  u.id = "U002";                 // Line C: ___
  print(u.displayName);          // Line D: ___
}
```

---

## Exercise 3: const vs final
For each declaration, write if it should use `final`, `const`, or neither:

```dart
___ double pi = 3.14159;              // 1. ___
___ String userName = getUserInput();   // 2. ___
___ int maxLoginAttempts = 5;          // 3. ___
___ DateTime createdAt = DateTime.now(); // 4. ___
___ List<String> colors = [];           // 5. (mutable list)
```

---

## Exercise 4: Create a Config Class
Create a class `AppSettings` with:
- `static const` values: appName, version, maxUsers
- `static` (non-const) counter: activeUsers
- A static method to display all settings

```dart
class AppSettings {
  // YOUR CODE HERE
}
```

---

## Exercise 5: Late Initialization
Fix this code using `late`:

```dart
class UserProfile {
  String username;  // Error: not initialized
  String bio;       // Error: not initialized

  void setup(String name, String biography) {
    username = name;
    bio = biography;
  }

  void display() {
    print("$username: $bio");
  }
}
```

Corrected version:
```dart
class UserProfile {
  // YOUR CODE HERE
}
```
