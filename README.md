
# 🌊 River Water Meter - Flutter UI

A clean and modern Flutter UI to visualize the current water level in a river. Inspired by real-world water meters, this interactive layout displays levels, dividers, measurements, and connected status widgets for temperature, humidity, and generator status.

## 📱 Features

- Custom styled water level dividers (big and small)
- Highlighted current water level reading
- Overlay widgets similar to CSS `position: absolute`
- Weather, humidity, and generator status panels
- Fully responsive with `responsive_sizer` package
- Background image for water effect
- Top and bottom toolbars with icons

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  responsive_sizer: ^3.1.4
```

## 🖥️ Preview

> ⚠️ Screenshot / screen recording recommended to appreciate the animation and layout.

## 📂 How to Use

1. Add your water image at `assets/blue_water.png`
2. Ensure your `pubspec.yaml` includes:

```yaml
assets:
  - assets/blue_water.png
```

3. Run your Flutter project:

```bash
flutter pub get
flutter run
```

## 📄 Code Highlights

- `bigDivider(String value, {connect = false})` – Draws major water level markings
- `smallDivider({red = false, connect = false, highlight = false})` – Draws minor dividers with optional overlays
- Overlay widgets using `Stack` and `Positioned` without affecting parent layout (mimicking CSS `position: absolute`)

## 💙 Made with Flutter

Rate this UI if you liked it! 🌟

---

© 2025 RiverMeter UI