# 08 — More on Attributes | Tasks

## Task 1: Student Registry with Static Counter
Create a `Student` class where:
- Each student has a `final` id that auto-increments (S001, S002, etc.)
- A `static` counter tracks how many students were created
- Each student has name, major, and gpa
- A `static` method prints the total count

Create 5 students and demonstrate the auto-incrementing ID and counter.

---

## Task 2: App Configuration
Create an `AppConfig` class that uses all attribute types:
- `static const` for: app name, version, API base URL
- `static` for: current theme ("light"/"dark"), language
- `final` for: build number, build date
- `late` for: user token (set after login)

Write methods to display config and simulate a login.

---

## Task 3: Game Score Tracker
Create a `GameScore` class with:
- `final String playerName` — set at creation
- `int _score` — private, starts at 0
- `static int highScore` — tracks the highest score ever across all players
- `static String highScoreHolder` — name of the player with highest score
- Methods: `addPoints(int)`, `getScore()`, `static displayHighScore()`

Create 3 players, simulate a game with points, and show the high score leaderboard.

```dart
// YOUR CODE HERE
```
