import 'package:restaurant/shared/additions/export.dart';

part 'menu_tab_state.dart';

class MenuTabCubit extends Cubit<MenuTabState> {
  MenuTabCubit() : super(MenuTabInitial());
  int menuTabs = 0;
  final GetMenuUseCase _usecase = injection.get();

  getMenu() async {
    emit(MenuTabLoading());
    var result = await _usecase.call(NoParams());
    result.fold((l) => emit(MenuTabError(message: l)), (r) {
      menuTabs = r.length;
      return emit(MenuTabSuccess(menuTabItems: r));
    });
  }
}
