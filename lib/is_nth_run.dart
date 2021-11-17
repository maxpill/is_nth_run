library is_nth_run;

import 'package:shared_preferences/shared_preferences.dart';

class IsNthRun {
  static const _nthRunKey = 'is_nth_run';
  static int? numberOfRuns;

  /// Returns true if this is the n-th time you call this method
  /// since installing the app, otherwise false.
  ///
  /// This method continues
  /// to return true as long as the app keeps running.

  static Future<bool> isNthRun(int number) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      numberOfRuns = prefs.getInt(_nthRunKey) ?? 0;
    } catch (e) {
      throw e;
    }

    await prefs.setInt(_nthRunKey, numberOfRuns! + 1);

    return numberOfRuns == number;
  }

  /// Returns true if this on n-th time you call this method
  /// since installing the app, otherwise false.
  ///
  /// isEveryNthRun(3) will return true on 3rd, 6th, 9th, 12th etc run.
  /// isEveryNthRun(7) will return true on 7th, 14th, 21st, 28th etc run.
  ///
  /// This method continues
  /// to return true as long as the app keeps running.

  static Future<bool> isEveryNthRun(int number) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      numberOfRuns = prefs.getInt(_nthRunKey) ?? 0;
    } catch (e) {
      throw e;
    }

    await prefs.setInt(_nthRunKey, numberOfRuns! + 1);
    return numberOfRuns! % number == 0;
  }

  static Future<void> reset() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(_nthRunKey, 0);
  }
}
