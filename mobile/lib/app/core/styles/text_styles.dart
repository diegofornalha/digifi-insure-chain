import 'package:flutter/material.dart';
import 'package:mobile/app/core/styles/colors.dart';

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
  TextStyle get smallBoldWhite => const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w700,
  );

  TextStyle get mediumWhite => const TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  TextStyle get bigWhite => const TextStyle(
        color: Colors.white,
        fontSize: 27,
        fontWeight: FontWeight.w700,
      );

  TextStyle get smallGray => TextStyle(
        color: AppColors.tertiary,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      );

  TextStyle get smallBlack => TextStyle(
      color: AppColors.secondary, fontSize: 12, fontWeight: FontWeight.w700);

  TextStyle get mediumBlack => TextStyle(
      color: AppColors.secondary, fontSize: 20, fontWeight: FontWeight.w700);
}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}
