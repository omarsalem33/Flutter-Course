// ============================================
// 05 — Objects Part Two | Example
// ============================================
// This example demonstrates object references,
// objects in lists, and passing objects to functions.
// ============================================

class Player {
  String name = "";
  int score = 0;
  int level = 1;
}

// Function that takes an object as parameter
void addPoints(Player player, int points) {
  player.score += points;
  print("${player.name} earned $points points! Total: ${player.score}");

  // Level up every 100 points
  if (player.score >= player.level * 100) {
    player.level++;
    print("🎉 ${player.name} leveled up to Level ${player.level}!");
  }
}

void displayLeaderboard(List<Player> players) {
  print("\n=== Leaderboard ===");
  // Sort by score (highest first)
  players.sort((a, b) => b.score.compareTo(a.score));

  int rank = 1;
  for (Player player in players) {
    print("#$rank ${player.name} | Score: ${player.score} | Level: ${player.level}");
    rank++;
  }
}

void main() {
  // --- Object References ---
  print("=== Object References Demo ===");
  Player original = Player();
  original.name = "Ahmed";
  original.score = 50;

  Player reference = original; // Same object!
  reference.score = 75;

  print("original.score: ${original.score}"); // 75 (affected!)
  print("reference.score: ${reference.score}"); // 75
  print("Same object? ${identical(original, reference)}"); // true

  // --- Objects in Lists ---
  print("\n=== Game Simulation ===");
  Player player1 = Player();
  player1.name = "Ahmed";
  player1.score = 0;

  Player player2 = Player();
  player2.name = "Sara";
  player2.score = 0;

  Player player3 = Player();
  player3.name = "Khalid";
  player3.score = 0;

  // Store in a List
  List<Player> players = [player1, player2, player3];

  // Simulate game rounds
  addPoints(player1, 80);
  addPoints(player2, 120);
  addPoints(player3, 95);
  addPoints(player1, 60);

  // Display results
  displayLeaderboard(players);
}
