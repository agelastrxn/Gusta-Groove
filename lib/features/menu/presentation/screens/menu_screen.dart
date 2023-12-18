import 'package:restaurant/shared/additions/export.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(), title: Strngs.bonAppetit),
      backgroundColor: AppColors.primaryAmber,
      body: MultiProvider(providers: [
        BlocProvider<MenuTabCubit>(create: (_) => MenuTabCubit()..getMenu()),
      ], child: const MenuBody()),
    );
  }
}
