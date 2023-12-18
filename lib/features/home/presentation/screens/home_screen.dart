import 'package:restaurant/shared/additions/export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<NavBarProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // floatingActionButton: const CustomFAB(icon: Icons.qr_code),
      body: Stack(children: [state.goIndex(state.currentIndex), const SideNavBar()]),
    );
  }
}
