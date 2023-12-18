import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class MenuDataSource implements IMenuDataSource {
  final FirebaseDBService _firebase = injection.get();
  @override
  Future<Either<Exception, List<Map<String, List<MenuItemModel>>>>> getMenu() async {
    return await _firebase.getMenu();
  }
}
