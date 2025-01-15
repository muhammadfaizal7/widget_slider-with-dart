# Widget Slider Documentation

This documentation provides an overview of the **Widget Slider** project, specifically focused on using the `MovieBox` widget for creating visually appealing movie posters with interactivity.

---

## **Features**
- Displays movie posters fetched from URLs.
- Rounded corners with elevation effects.
- Tap interaction support for each movie poster.
- Reusable and styled widget design using the `styled_widget` package.

---

## **Requirements**
- **Flutter SDK**: Ensure you have Flutter installed. [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- **Packages**:
  - `styled_widget` for elegant styling.

Install the required dependencies in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  styled_widget: ^1.1.0
```

Run:
```bash
flutter pub get
```

---

## **Preview**
Each movie poster will be displayed as a rounded box with an elevation effect and interactive tap gesture. Example movie posters include:

- The Avengers
- Inception
- Interstellar
- The Dark Knight

---

## **Customization**
You can easily modify the styles or add new features by updating `styles.dart` or the `MovieBox` widget. Examples include:
- Adding a title or rating over the poster.
- Adding animations for transitions.

---

Enjoy building with **Widget Slider**! 🚀

