import 'package:dartz/dartz.dart';
import 'package:restaurant/app/get_it/injection.dart';
import 'package:restaurant/features/menu/data/datasource/i_menu_ds.dart';
import 'package:restaurant/features/menu/data/models/menu_item_model.dart';
import 'package:restaurant/features/menu/domain/repository/i_menu_repo.dart';

class MenuRepository implements IMenuRpository {
  final IMenuDataSource _dataSource = injection.get();
  @override
  Future<Either<Exception, List<Map<String, List<MenuItemModel>>>>> getMenu() async {
    return await _dataSource.getMenu();
  }
}
