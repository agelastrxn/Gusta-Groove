import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class AddUserUseCase implements UseCase<UserModel, bool> {
  final IAuthRepository _repository = injection.get();
  @override
  Future<Either<Exception, bool>> call(UserModel user) async {
     return await _repository.addUser(user: user);
  }
}
