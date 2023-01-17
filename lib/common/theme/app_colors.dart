import 'package:flutter/material.dart';

class AppColors {
  /// 基本色
  final Color background;
  final Color accent;
  final Color disabled;
  final Color error;
  final Color divider;

  /// 日記関係
  final Color diaryListBackground;
  final Color diaryTextFieldBackground;
  final Color emptyColor;

  const AppColors({
    required this.background,
    required this.accent,
    required this.disabled,
    required this.error,
    required this.divider,
    required this.diaryListBackground,
    required this.diaryTextFieldBackground,
    required this.emptyColor,
  });

  factory AppColors.light() {
    return AppColors(
      background: Colors.white,
      accent: Color(0xff17c063),
      disabled: Colors.black12,
      error: Color(0xffff7466),
      divider: Colors.black54,
      diaryListBackground: Colors.amber,
      diaryTextFieldBackground: Colors.white60,
      emptyColor: Colors.grey.shade800,
    );
  }

  factory AppColors.dark() {
    return AppColors(
      background: Color(0xff121212),
      accent: Color(0xff17c063),
      disabled: Colors.white12,
      error: Color(0xffff5544),
      divider: Colors.white54,
      diaryListBackground: Colors.teal.shade700,
      diaryTextFieldBackground: Colors.white12,
      emptyColor: Colors.grey,
    );
  }
}
