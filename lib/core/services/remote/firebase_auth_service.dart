import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<Either<Exception, User?>> login(String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(email: email, password: password);
      return Right(userCredential.user);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseFailure(code: e.code, message: e.message ?? Strngs.error));
    }
  }

  Future<Either<Exception, User?>> register(String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return Right(userCredential.user);
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseFailure(code: e.code, message: e.message ?? Strngs.error));
    }
  }

  Future<void> logOut() async => await _auth.signOut();
}
