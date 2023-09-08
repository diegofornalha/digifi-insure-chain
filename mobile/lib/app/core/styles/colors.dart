import 'dart:ui';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  static Color get primary => const Color(0xE50FA3E2);
  static Color get onPrimary => const Color(0xFF3D1273);
  static Color get secondary => const Color(0xFF142C06);
  static Color get tertiary => const Color(0xFFBEBEBE);
}