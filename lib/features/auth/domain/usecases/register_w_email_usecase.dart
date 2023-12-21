import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class RegisterWithEmailUsecase implements UseCase<UserModel, User?> {
  final IAuthRepository _repository = injection.get();
  @override
  Future<Either<Exception, User?>> call(UserModel params) async {
    return await _repository.register(body: params);
  }
}
