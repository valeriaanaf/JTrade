import 'package:flutter/cupertino.dart';

class AppColors {
  static const burgundy = Color(0xFF5B0F18);
  static const cream = Color(0xFFF8F1E7);
  static const black = Color(0xFF0B0B0B);
  static const darkCard = Color(0xFF1A1315);
  static const accentDark = Color(0xFFB4475A);
  static const profit = Color(0xFF2E9E5B);
  static const loss = Color(0xFFE5484D);
}

class AppTheme {
  static const light = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.burgundy,
    scaffoldBackgroundColor: AppColors.cream,
    barBackgroundColor: Color(0xF2F8F1E7),
    textTheme: CupertinoTextThemeData(
      textStyle: TextStyle(
        inherit: false,
        fontSize: 17,
        letterSpacing: -0.41,
        color: AppColors.black,
      ),
    ),
  );

  static const dark = CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.accentDark,
    scaffoldBackgroundColor: AppColors.black,
    barBackgroundColor: Color(0xF20B0B0B),
    textTheme: CupertinoTextThemeData(
      textStyle: TextStyle(
        inherit: false,
        fontSize: 17,
        letterSpacing: -0.41,
        color: AppColors.cream,
      ),
    ),
  );
}
