# Flutter Business Card App

A simple Flutter application that displays a personal business card. This project is designed for Flutter beginners to practice the fundamentals of UI development using widgets, layouts, images, and styling.

## 📱 Preview

The app displays:

- Profile picture
- Name
- Job title
- Phone number
- Email address

---

## 🚀 Features

- Clean and responsive UI
- Circular profile image using `CircleAvatar`
- Custom fonts
- Asset image support
- Material Design widgets
- Styled contact information cards

---

## 📂 Project Structure

```
lib/
 └── main.dart

images/
 └── 432.jpg

pubspec.yaml
```

---

## 🧱 Widgets Used

This project uses several important Flutter widgets:

- `MaterialApp`
- `Scaffold`
- `Column`
- `CircleAvatar`
- `Text`
- `Divider`
- `Padding`
- `Container`
- `Row`
- `Spacer`
- `Icon`

---

## 💻 Code Explanation

### main()

```dart
void main() {
  runApp(BusinessCardApp());
}
```

The entry point of the application. It launches the `BusinessCardApp` widget.

---

### BusinessCardApp

```dart
class BusinessCardApp extends StatelessWidget
```

A stateless widget that builds the entire application.

Inside it:

- Creates a `MaterialApp`
- Uses a `Scaffold` as the main page
- Sets a dark blue background color

---

### Profile Image

```dart
CircleAvatar(
  radius: 152,
  backgroundColor: Color(...),
  child: CircleAvatar(
    radius: 150,
    backgroundImage: AssetImage('images/432.jpg'),
  ),
)
```

Two nested `CircleAvatar` widgets are used:

- Outer avatar creates a border.
- Inner avatar displays the profile image from the assets folder.

---

### Name

```dart
Text(
  'Omar Salem',
)
```

Displays the user's name using:

- White color
- Custom `Pacifico` font
- Font size 32

---

### Job Title

```dart
Text(
  'FLUTTER DEVELOPER',
)
```

Displays the profession with:

- Gray color
- Letter spacing
- Custom `Source Sans Pro` font

---

### Divider

```dart
Divider(...)
```

Creates a horizontal line between the profile information and contact information.

---

### Phone Card

```dart
Container(
    child: Row(...)
)
```

Contains:

- Phone icon
- Phone number
- Rounded white background

The `Spacer` widgets are used to evenly distribute space inside the row.

---

### Email Card

Works exactly like the phone card but contains:

- Email icon
- Email address

---

## 🎨 Colors

| Purpose        | Color     |
| -------------- | --------- |
| Background     | `#2B475E` |
| Secondary Text | `#6C8090` |
| Cards          | White     |
| Icons          | `#2B475E` |

---

## 📦 Assets

The profile image is loaded from:

```
images/432.jpg
```

Make sure it is added to `pubspec.yaml`:

```yaml
flutter:
  assets:
    - images/432.jpg
```

---

## 🔤 Fonts

This project uses custom fonts:

- Pacifico
- Source Sans Pro

Example configuration in `pubspec.yaml`:

```yaml
fonts:
  - family: Pacifico
    fonts:
      - asset: fonts/Pacifico-Regular.ttf

  - family: Source Sans Pro
    fonts:
      - asset: fonts/SourceSansPro-Regular.ttf
```

---

## 🛠️ Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/flutter-business-card.git
```

### 2. Navigate to the project

```bash
cd flutter-business-card
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the application

```bash
flutter run
```

---

## 📚 What You'll Learn

This project is great for beginners who want to practice:

- Flutter project structure
- Stateless widgets
- Layout using `Column` and `Row`
- Asset management
- Styling widgets
- Using icons
- Padding and spacing
- Custom fonts
- Building a simple UI

---

## 👨‍💻 Author

**Omar Salem**

Flutter Developer

---

## ⭐ If you like this project

Give it a ⭐ on GitHub and feel free to fork it for your own learning!
