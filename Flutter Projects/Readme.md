# My Profile - Flutter App

A simple Flutter app that displays a basic profile screen with an avatar icon, name, title, and a row of contact icons.

## What This Code Does

This is a minimal Flutter application demonstrating core widgets used to build a static UI screen (like a profile page).

### Code Breakdown

#### 1. Entry Point

```dart
void main() {
  runApp(MyApp());
}
```

Every Flutter app starts execution here. `runApp()` takes the given widget (`MyApp`) and makes it the root of the widget tree, attaching it to the screen.

#### 2. MyApp Widget

```dart
class MyApp extends StatelessWidget {
```

`MyApp` is a `StatelessWidget` — meaning it has no internal state that changes over time. It just describes what the UI should look like once, based on its configuration.

#### 3. MaterialApp

```dart
MaterialApp(
  home: Scaffold(...)
)
```

`MaterialApp` sets up the app-wide configuration (theming, navigation, Material Design behavior). The `home` property defines the first screen shown when the app launches.

#### 4. Scaffold

```dart
Scaffold(
  appBar: AppBar(title: Text("My Profile"), centerTitle: true),
  body: Center(...)
)
```

`Scaffold` provides the basic visual structure of a screen — app bar, body, and (optionally) drawers, floating buttons, etc.

- `appBar`: the top bar showing the title "My Profile", centered via `centerTitle: true`.
- `body`: everything below the app bar — in this case, wrapped in a `Center` widget so its contents are centered both vertically and horizontally.

#### 5. Column Layout

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [ ... ]
)
```

`Column` stacks its children vertically. `mainAxisAlignment: MainAxisAlignment.center` centers the children along the vertical (main) axis.

Children, in order:

- **`Icon(Icons.person, size: 100)`** — a large placeholder icon acting as the profile avatar.
- **`SizedBox(height: 20)`** — adds vertical spacing (a common trick for spacing instead of margins/padding).
- **`Text("Omar Salem", ...)`** — the user's name, styled with a larger, bold font (`fontSize: 24`, `fontWeight: FontWeight.bold`).
- **`Text("Flutter Developer")`** — a subtitle/role, using default text styling.
- **`SizedBox(height: 30)`** — more vertical spacing before the icon row.
- **`Row(...)`** — a horizontal row of icons.

#### 6. Row of Icons

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.phone),
    SizedBox(width: 10),
    Icon(Icons.email),
    SizedBox(width: 10),
    Icon(Icons.favorite),
  ],
)
```

`Row` arranges its children horizontally, centered here as well. It displays three icons (phone, email, favorite) separated by fixed-width `SizedBox` spacers (10 pixels each).

## Widget Tree Summary

```
MyApp
└── MaterialApp
    └── Scaffold
        ├── AppBar ("My Profile")
        └── Center
            └── Column
                ├── Icon (person)
                ├── SizedBox
                ├── Text (name)
                ├── Text (title)
                ├── SizedBox
                └── Row
                    ├── Icon (phone)
                    ├── SizedBox
                    ├── Icon (email)
                    ├── SizedBox
                    └── Icon (favorite)
```

## Key Concepts Demonstrated

| Concept                | Where Used                           |
| ---------------------- | ------------------------------------ |
| StatelessWidget        | `MyApp` class                        |
| MaterialApp & Scaffold | App structure and navigation shell   |
| AppBar                 | Top title bar                        |
| Column & Row           | Vertical and horizontal layout       |
| Center                 | Centering content on screen          |
| SizedBox               | Manual spacing between widgets       |
| Icon & Text styling    | Displaying and styling basic content |

## Possible Improvements

- Replace `Icon(Icons.person, size: 100)` with a `CircleAvatar` and a real profile image.
- Wrap the phone/email/favorite icons in `IconButton` or `GestureDetector` to make them tappable (e.g., launch a call, open an email client, or toggle a favorite state).
- Extract the profile card into its own reusable widget (e.g., `ProfileCard`).
- Add padding around the `Column` for better spacing on different screen sizes.
- Convert to a `StatefulWidget` if you want the favorite icon to toggle between filled/outlined on tap.

## How to Run

1. Make sure Flutter is installed ([flutter.dev](https://flutter.dev)).
2. Place this code in `lib/main.dart` inside a Flutter project.
3. Run:
   ```bash
   flutter pub get
   flutter run
   ```
