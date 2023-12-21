import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

abstract class IAuthRemoteDataSource {
  Future<Either<Exception, User?>> login({required LoginWithEmailParams body});
  Future<Either<Exception, User?>> register({required UserModel body});
  Future<Either<Exception, bool>> addUser({required UserModel user});
  Future<Either<Exception, UserEntity>> getUser({required String email});
  
}
