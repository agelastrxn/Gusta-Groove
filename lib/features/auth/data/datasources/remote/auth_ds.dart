import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final FirebaseAuthService _auth = injection.get();
  final FirebaseDBService _storage = injection.get();
  @override
  Future<Either<Exception, User?>> login({required body}) async {
    return await _auth.login(body.email, body.password);
  }

  @override
  Future<Either<Exception, User?>> register({required body}) async {
    return await _auth.register(body.email, body.password);
  }

  @override
  Future<Either<Exception, bool>> addUser({required UserModel user}) async {
    return await _storage.addUser(user);
  }

  @override
  Future<Either<Exception, UserEntity>> getUser({required String email}) async {
    return await _storage.getUser(email);
  }
}
