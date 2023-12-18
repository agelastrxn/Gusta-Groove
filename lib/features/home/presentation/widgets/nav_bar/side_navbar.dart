import 'package:restaurant/shared/additions/export.dart';

class SideNavBar extends StatelessWidget {
  @override
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> navItems = [
      Strngs.profile,
      Strngs.campaign,
      Strngs.menu,
      Strngs.branches,
      Strngs.contact,
    ];

    final state = context.watch<NavBarProvider>();
    return RotatedBox(
      quarterTurns: state.quraterTurns,
      child: CurvedNavigationBar(
        index: state.currentIndex,
        onTap: (v) => state.changeIndex(v),
        items: navItems.map((_) => Text(_, style: AppTextStyle.navText)).toList(),
      ),
    );
  }
}
