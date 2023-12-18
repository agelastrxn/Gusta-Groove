import 'package:dartz/dartz.dart';
import 'package:restaurant/features/menu/data/models/menu_item_model.dart';

abstract class IMenuRpository {
  Future<Either<Exception, List<Map<String, List<MenuItemModel>>>>> getMenu();
}
