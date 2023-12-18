import 'package:dartz/dartz.dart';
import 'package:restaurant/features/profile/domain/usecases/update_user_usecase.dart';
import 'package:restaurant/shared/additions/export.dart';

class ProfileRepository implements IProfileRepository {
  final IProfileDataSource _dataSource = injection.get();
  @override
  Future<void> logOut() async {
    return await _dataSource.logOut();
  }

  @override
  Future<Either<Exception, UserModel>> updateUser(UpdatePPParams params) async {
    return await _dataSource.updateUser(params);
  }
}
