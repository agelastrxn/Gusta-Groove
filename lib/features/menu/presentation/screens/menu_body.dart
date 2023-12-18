import 'package:restaurant/shared/additions/export.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<MenuTabCubit>();
    return DefaultTabController(
      length: cubit.menuTabs,
      child: const Column(
        children: [
          MenuTabBar(),
          MenuTabBarView(),
        ],
      ),
    );
  }
}
