import 'package:dartz/dartz.dart';
import 'package:restaurant/features/profile/domain/usecases/update_user_usecase.dart';

import 'package:restaurant/shared/additions/export.dart';

abstract class IProfileRepository {
  Future<void> logOut();
  Future<Either<Exception, UserModel>> updateUser(UpdatePPParams user);
}
