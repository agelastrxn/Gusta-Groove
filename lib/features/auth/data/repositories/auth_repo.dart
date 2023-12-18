import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class AuthRepository implements IAuthRepository {
  final IAuthRemoteDataSource _remoteDataSource = injection.get();

  @override
  Future<Either<Exception, User?>> login({required body}) async {
    return await _remoteDataSource.login(body: body);
  }

  @override
  Future<Either<Exception, User?>> register({required body}) async {
    return await _remoteDataSource.register(body: body);
  }

  @override
  Future<Either<Exception, bool>> addUser({required UserModel user}) async {
    return await _remoteDataSource.addUser(user: user);
  }

  @override
  Future<Either<Exception, UserEntity>> getUser({required String email}) async {
    return await _remoteDataSource.getUser(email: email);
  }
}
