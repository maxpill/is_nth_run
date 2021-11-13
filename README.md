# is_nth_run

## Getting Started

To use this plugin, add `is_nth_run` as a [dependency in your `pubspec.yaml` file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

## Usage

Import `is_nth_run.dart`:

```dart
import 'package:is_nth_run/is_nth_run.dart';
```

To check if this is the n-th time the app is run call:

```dart
bool nthRun = await IsNthRun.isNthRun();
```

To reset the counter call:

```dart
await IsNthRun.reset();
```
