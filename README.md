# is_nth_run

A package to check if it is the n-th time the app runs.

## Getting Started

To use this plugin, add `is_nth_run` as a [dependency in your `pubspec.yaml` file](https://flutter.dev/docs/development/packages-and-plugins/using-packages).

## Usage

Import `is_nth_run.dart`:

```dart
import 'package:is_nth_run/is_nth_run.dart';
```

To check if this is the n-th time the app is run call:

Will return true only on 3rd run.

```dart
bool nthRun = await IsNthRun.isNthRun(3);
```

To check if this is the every n-th time the app is run call:

Will return true on 5th, 15th, 20th, 25th etc. run.

```dart
bool nthRun = await IsNthRun.isEveryNthRun(5);
```

To reset the counter call:

```dart
await IsNthRun.reset();
```
