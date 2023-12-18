import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';


class LoginWithEmailUsecase implements UseCase<LoginWithEmailParams, User?> {
  final IAuthRepository _authRepository = injection.get();

  @override
  Future<Either<Exception, User?>> call(LoginWithEmailParams params) async {
    return await _authRepository.login(body: params);
  }
}

class LoginWithEmailParams {
  final String email;
  final String password;

  LoginWithEmailParams({required this.email, required this.password});
}
