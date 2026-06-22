// ============================================
// 03 — Encapsulation Part 3 | Exercises
// ============================================
// Follow each exercise step by step.
// ============================================

// Exercise 1:
// Create a fully encapsulated `Library` class with:
// - Private list of books `_books`
// - Private method `_bookExists(String title)`
// - Public methods: addBook, removeBook, showBooks

class Library {
  List<String> _books = [];

  bool _bookExists(String title) {
    return _books.contains(title);
  }

  void addBook(String title) {
    if (!_bookExists(title)) {
      _books.add(title);
      print("Added: $title");
    } else {
      print("'$title' already exists!");
    }
  }

  void removeBook(String title) {
    if (_bookExists(title)) {
      _books.remove(title);
      print("Removed: $title");
    } else {
      print("'$title' not found!");
    }
  }

  void showBooks() {
    print("Library has ${_books.length} books:");
    for (var book in _books) {
      print("  - $book");
    }
  }
}

// Exercise 2:
// Create a `ScoreTracker` class with:
// - Private variables: `_scores` (List<int>), `_playerName`
// - Private method: `_calculateAverage()`
// - Public methods: addScore, getAverage, showSummary

class ScoreTracker {
  String _playerName;
  List<int> _scores = [];

  ScoreTracker(this._playerName);

  double _calculateAverage() {
    if (_scores.isEmpty) return 0;
    int total = 0;
    for (var score in _scores) {
      total += score;
    }
    return total / _scores.length;
  }

  void addScore(int score) {
    if (score >= 0 && score <= 100) {
      _scores.add(score);
      print("Score $score added for $_playerName");
    } else {
      print("Invalid score! Must be 0-100");
    }
  }

  double getAverage() {
    return _calculateAverage();
  }

  void showSummary() {
    print("Player: $_playerName");
    print("Scores: $_scores");
    print("Average: ${_calculateAverage().toStringAsFixed(1)}");
  }
}

void main() {
  // Test Exercise 1
  print("--- Exercise 1 ---");
  var library = Library();
  library.addBook("Dart in Action");
  library.addBook("Flutter Complete Guide");
  library.addBook("Dart in Action"); // duplicate
  library.showBooks();
  library.removeBook("Dart in Action");
  library.showBooks();

  // Test Exercise 2
  print("\n--- Exercise 2 ---");
  var tracker = ScoreTracker("Ali");
  tracker.addScore(85);
  tracker.addScore(92);
  tracker.addScore(78);
  tracker.addScore(150); // invalid
  tracker.showSummary();
}
