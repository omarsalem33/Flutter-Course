// ============================================
// 38 — Null Safety Part Two | Tasks
// ============================================

void main() {
  // Task 1: User Settings
  // Create variables for user settings (all nullable):
  // - theme, language, notificationsEnabled
  // Use ?? to apply defaults: "dark", "ar", true
  // Print all final settings.
  String? theme;
  String? language;
  bool? notificationsEnabled;
  // YOUR CODE HERE:


  // Task 2: Safe String Operations
  // Given a nullable String, safely:
  // 1. Print its length (or 0 if null)
  // 2. Print it in uppercase (or "EMPTY" if null)
  // 3. Check if it contains "dart" (or false if null)
  String? text = "I love Dart programming";
  String? text2;
  // Do this for both text and text2.
  // YOUR CODE HERE:


  // Task 3: Default Assignment Chain
  // Use ??= to set defaults in order:
  // 1. Start with a null variable
  // 2. Try to assign "first" — should work
  // 3. Try to assign "second" — should NOT override
  // 4. Try to assign "third" — should NOT override
  // Print after each step to verify.
  String? value;
  // YOUR CODE HERE:


  // Task 4: Config Builder
  // Build a configuration string from nullable parts:
  // host ?? "localhost", port ?? 8080, path ?? "/api"
  // Combine them into: "http://host:port/path"
  // Handle each null part with a default.
  String? host;
  int? port = 3000;
  String? path;
  // YOUR CODE HERE:
}
