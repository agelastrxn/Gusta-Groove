import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class GetUserUsecase implements UseCase<String, UserEntity> {
  final IAuthRepository _repository = injection.get();
  @override
  Future<Either<Exception, UserEntity>> call(params) async {
    return await _repository.getUser(email: params);
  }
}
