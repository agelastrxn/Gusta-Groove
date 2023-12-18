part of 'menu_tab_cubit.dart';

abstract class MenuTabState extends Equatable {
  const MenuTabState();

  @override
  List<Object> get props => [];
}

final class MenuTabInitial extends MenuTabState {}

final class MenuTabLoading extends MenuTabState {}

final class MenuTabError extends MenuTabState {
  final Exception message;

  const MenuTabError({required this.message});

  @override
  List<Object> get props => [message];
}

final class MenuTabSuccess extends MenuTabState {
  final List<Map<String, List<MenuItemModel>>> menuTabItems;
  const MenuTabSuccess({ required this.menuTabItems});

  @override
  List<Object> get props => [menuTabItems];
}
