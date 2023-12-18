import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class GetMenuUseCase implements UseCase<NoParams, void> {
  final IMenuRpository repository = injection.get();

  @override
  Future<Either<Exception, List<Map<String, List<MenuItemModel>>>>> call(NoParams params) async {
    return await repository.getMenu();
  }
}
