// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// state = true = darkTheme
// state = false = lightTheme
class AppTheme extends StateNotifier<bool?> {
  AppTheme() : super(true);

  void switcTheme() {
    if (state == null) {
      final brightness = SchedulerBinding.instance!.window.platformBrightness;
      final isDarkMode = brightness == Brightness.dark;
      state = !isDarkMode;
    } else {
      state = !state!;
    }
  }

  // flutter-theme-editor.rob-b.co.uk
  // rxlabz.github.io/panache_web
  // appainter.dev

  static final lightTheme = ThemeData();

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
  );
}
