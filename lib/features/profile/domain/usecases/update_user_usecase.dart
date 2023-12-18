import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class UpdateUserUseCase implements UseCase<UpdatePPParams, UserModel> {
  final IProfileRepository _repository = injection.get();
  @override
  Future<Either<Exception, UserModel>> call(UpdatePPParams params) async {
    return await _repository.updateUser(params);
  }
}

class UpdatePPParams {
  final String email;
  final String photoUrl;

  UpdatePPParams(this.email, this.photoUrl);
}
