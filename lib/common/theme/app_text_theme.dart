import 'package:flutter/material.dart';
import 'package:riverpod_fooks_sample_app/gen/fonts.gen.dart';

import 'font_size.dart';

/// テキストのテーマ
class AppTextTheme {
  final TextStyle h10;
  final TextStyle h20;
  final TextStyle h30;
  final TextStyle h40;
  final TextStyle h50;
  final TextStyle h60;
  final TextStyle h70;
  final TextStyle h80;
  final TextStyle appTitle;

  const AppTextTheme._({
    required this.h10,
    required this.h20,
    required this.h30,
    required this.h40,
    required this.h50,
    required this.h60,
    required this.h70,
    required this.h80,
    required this.appTitle,
  });

  factory AppTextTheme() {
    const _normalRegular = TextStyle(
      fontWeight: FontWeight.w400,
      height: 1.5,
      leadingDistribution: TextLeadingDistribution.even,
    );
    return AppTextTheme._(
      h10: const TextStyle(fontSize: FontSize.pt10).merge(_normalRegular),
      h20: const TextStyle(fontSize: FontSize.pt12).merge(_normalRegular),
      h30: const TextStyle(fontSize: FontSize.pt14).merge(_normalRegular),
      h40: const TextStyle(fontSize: FontSize.pt16).merge(_normalRegular),
      h50: const TextStyle(fontSize: FontSize.pt20).merge(_normalRegular),
      h60: const TextStyle(fontSize: FontSize.pt24).merge(_normalRegular),
      h70: const TextStyle(fontSize: FontSize.pt32).merge(_normalRegular),
      h80: const TextStyle(fontSize: FontSize.pt40).merge(_normalRegular),
      appTitle: const TextStyle(fontSize: FontSize.pt20).merge(_normalRegular),
    );
  }
}

extension TextStyleExt on TextStyle {
  TextStyle bold() => copyWith(fontWeight: FontWeight.w700);

  TextStyle comfort() => copyWith(height: 1.8);

  TextStyle dense() => copyWith(height: 1.2);

  TextStyle rotunda() => copyWith(fontFamily: FontFamily.rotunda);
}
