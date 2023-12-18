import 'package:restaurant/shared/additions/export.dart';

class AppPaddings {
  const AppPaddings._();

  static EdgeInsets get leftPadding => const EdgeInsets.only(left: 60);
  static EdgeInsets get defaultPadding =>
      const EdgeInsets.only(left: 76, right: 16, top: 8, bottom: 8);
  static EdgeInsets get tabPadding => const EdgeInsets.symmetric(horizontal: 10);
  static EdgeInsets get authPadding => const EdgeInsets.symmetric(horizontal: 16);

}
