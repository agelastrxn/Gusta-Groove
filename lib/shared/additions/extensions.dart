import 'package:restaurant/shared/additions/export.dart';

extension StringExtension on String {
  bool get isEmailValid {
    final regex = RegExp(Strngs.emailRegex);
    return regex.hasMatch(this);
  }

  bool get isPasswordValid {
    final regex = RegExp(Strngs.pswRegex);
    return regex.hasMatch(this);
  }
}
