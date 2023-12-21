import 'package:restaurant/shared/additions/export.dart';

class AppRadiuses {
  AppRadiuses._();
  static BorderRadius indicator = const BorderRadius.only(
      topLeft: Radius.circular(20), bottomRight: Radius.circular(20));
  static BorderRadius card = const BorderRadius.only(
    topLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
    topRight: Radius.circular(20),
  );

  static BorderRadius defaultRadius = BorderRadius.circular(20);
}
