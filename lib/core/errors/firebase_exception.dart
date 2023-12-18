import 'package:restaurant/shared/additions/export.dart';

class FirebaseFailure extends FirebaseAuthException {
  @override
  // ignore: overridden_fields
  final String message;

  @override
  // ignore: overridden_fields
  final String code;
  FirebaseFailure({required this.message, required this.code}) : super(code: code);
}
