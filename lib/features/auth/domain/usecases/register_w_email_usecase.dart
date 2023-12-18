import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class RegisterWithEmailUsecase implements UseCase<RegisterWithEmailParams, User?> {
  final IAuthRepository _repository = injection.get();
  @override
  Future<Either<Exception, User?>> call(RegisterWithEmailParams params) async {
    return await _repository.register(body: params);
  }
}

class RegisterWithEmailParams {
  final String email;
  final String password;

  const RegisterWithEmailParams({required this.email, required this.password});
}
