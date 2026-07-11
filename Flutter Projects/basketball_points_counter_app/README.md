# 🏀 Basketball Points Counter - Flutter

This project is a simple Flutter application that keeps track of the score for two basketball teams. It demonstrates the fundamentals of Flutter development, including state management with `StatefulWidget`, widget layout, and updating the user interface using `setState()`.

---

# 📂 Project Structure

```
lib/
└── main.dart
```

The entire application is implemented inside **main.dart**.

---

# 📖 Code Explanation

## 1. Import Flutter Material Package

```dart
import 'package:flutter/material.dart';
```

This imports Flutter's Material Design library, which provides widgets such as `MaterialApp`, `Scaffold`, `AppBar`, `Text`, `Row`, `Column`, and `ElevatedButton`.

---

## 2. Application Entry Point

```dart
void main() {
  runApp(PointsCounter());
}
```

The `main()` function is the entry point of every Flutter application.

`runApp()` starts the application by displaying the `PointsCounter` widget.

---

## 3. Creating a Stateful Widget

```dart
class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}
```

The application uses a **StatefulWidget** because the scores change while the application is running.

A `StatefulWidget` consists of two classes:

- The widget class (`PointsCounter`)
- The state class (`_PointsCounterState`)

The `createState()` method creates the state object responsible for managing the application's data.

---

## 4. State Variables

```dart
int teamAPoints = 0;
int teamBPoints = 0;
```

These integer variables store the current score for each team.

Initially, both values are zero.

Whenever one of these values changes, the UI is rebuilt using `setState()`.

---

## 5. Building the User Interface

```dart
Widget build(BuildContext context)
```

The `build()` method returns the widget tree that represents the application's interface.

The root widget is:

```dart
MaterialApp
```

Inside it is a

```dart
Scaffold
```

which provides the application's basic layout.

---

## 6. AppBar

```dart
appBar: AppBar(
  backgroundColor: Colors.orange,
  title: Text('Points Counter'),
),
```

The AppBar appears at the top of the screen.

It contains:

- Orange background color
- Application title

---

## 7. Main Layout

The body consists of a `Column`.

```dart
body: Column(
  children: [
```

The `Column` arranges widgets vertically.

Inside it is a `Row`.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
)
```

The `Row` displays Team A and Team B side by side.

---

## 8. Team Section

Each team has its own `Column`.

Example:

```dart
Column(
  children: [
```

Each column contains:

- Team name
- Current score
- Three buttons for adding points

---

## 9. Displaying the Score

```dart
Text("$teamAPoints")
```

The score is displayed using string interpolation.

Whenever the value changes, Flutter automatically updates the displayed number.

---

## 10. Adding Points

Example:

```dart
onPressed: () {
  setState(() {
    teamAPoints++;
  });
}
```

When the button is pressed:

1. `setState()` is called.
2. The score increases.
3. Flutter rebuilds the widget tree.
4. The updated score appears immediately.

Other buttons add two or three points.

Example:

```dart
teamAPoints += 2;
```

```dart
teamAPoints += 3;
```

The same logic is used for Team B.

---

## 11. setState()

```dart
setState(() {
   teamAPoints++;
});
```

`setState()` is one of the most important concepts in Flutter.

Its purpose is to notify Flutter that the application's state has changed.

Without `setState()`, the value would change internally, but the user interface would **not** update.

---

## 12. Vertical Divider

```dart
VerticalDivider(
  color: Colors.grey,
  thickness: 1,
)
```

The divider visually separates Team A from Team B.

---

## 13. SizedBox

```dart
SizedBox(height: 15)
```

`SizedBox` creates empty space between widgets, making the interface cleaner and easier to read.

---

## 14. Spacer

```dart
Spacer(flex: 1)
```

`Spacer` pushes widgets apart by taking up the available empty space.

In this project, it moves the Reset button toward the bottom of the screen.

---

## 15. Reset Button

```dart
onPressed: () {
  setState(() {
    teamAPoints = 0;
    teamBPoints = 0;
  });
}
```

The Reset button sets both scores back to zero and refreshes the interface.

---

# 🧩 Widget Tree

```
MaterialApp
│
└── Scaffold
    │
    ├── AppBar
    │
    └── Column
        │
        ├── Row
        │   ├── Column (Team A)
        │   │    ├── Text
        │   │    ├── Score
        │   │    ├── Button (+1)
        │   │    ├── Button (+2)
        │   │    └── Button (+3)
        │   │
        │   ├── VerticalDivider
        │   │
        │   └── Column (Team B)
        │        ├── Text
        │        ├── Score
        │        ├── Button (+1)
        │        ├── Button (+2)
        │        └── Button (+3)
        │
        ├── Spacer
        ├── Reset Button
        └── Spacer
```

---

# 🎯 Flutter Concepts Demonstrated

- Flutter Widgets
- Material Design
- StatefulWidget
- State Management
- setState()
- Variables
- Row & Column Layout
- ElevatedButton
- Text Widget
- SizedBox
- Spacer
- VerticalDivider
- Widget Tree

---

# 🚀 What This Project Teaches

By completing this project, you will learn how to:

- Create a Flutter application.
- Build user interfaces using widgets.
- Manage application state with `StatefulWidget`.
- Update the UI dynamically using `setState()`.
- Handle button click events.
- Organize widgets using `Row` and `Column`.
- Build a simple interactive mobile application.

---

# 👨‍💻 Author

**Omar Salem**

Software Engineer | Flutter Developer | .NET Developer