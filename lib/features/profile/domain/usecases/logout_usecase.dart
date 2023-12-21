import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class LogOutUsecase implements UseCase<NoParams, void> {
  final IProfileRepository _repository = injection.get();
  @override
  Future<Either<Exception, void>> call(params) async {
    var result = await _repository.logOut();
    return Right(result);
  }
}
