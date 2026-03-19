# Organic Flow

A completely customizable, organic mesh gradient package for Flutter that allows you to easily generate breathtaking, fluid background animations.

> ⚠️ **Warning:** The animated effect evaluates complex shaders and paths continuously at 60fps. Running this constantly on screen will consume a significant amount of battery. Consider pausing the animation (`animated: false`) when the screen is idle or not actively in focus.

## Features

- **Dynamic Motion**: Offers different fluid animation types such as `calm`, `waves`, `pulse`, `vortex`, `liquid`, `cloudy`, and more.
- **Vibrant Themes**: Comes packed with hand-picked gradient palettes (`focus`, `energy`, `midnight`, `forest`, `sunset`, `ocean`, `passion`, etc.). 
- **Optimized & Controllable**: Includes customizable Gaussian blur values, static snapshotting, scale transformations, and full animation controls. 

## Getting Started

In your `pubspec.yaml` file, add `organic_flow` as a dependency. Then import it into your code:

```dart
import 'package:organic_flow/organic_flow.dart';
```

## Usage

```dart
OrganicFlowGradient(
  theme: OrganicFlowTheme.ocean,  // Built-in color palette
  type: OrganicFlowType.waves,    // The type of flow motion
  blur: 20.0,                     // Optional Gaussian blur
  animated: true,                 // Set false for a static snapshot
  duration: const Duration(seconds: 20),
)
```

## Example Application
An interactive playground is included inside the `/example` directory, illustrating how to toggle and test different themes, flow types, and blur settings.

To try out the example app on macOS, execute the following from the root directory:
```bash
cd example
flutter run -d macos
```
