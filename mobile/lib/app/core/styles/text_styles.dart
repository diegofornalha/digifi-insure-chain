import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  TextStyle get smallWhite => const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  TextStyle get mediumWhite => const TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}
