import 'package:restaurant/shared/additions/export.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 40),
        backgroundColor: AppColors.tileColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.primaryAmber,
    ),
  );
}
