import 'package:restaurant/shared/additions/export.dart';

class BranchesScreen extends StatelessWidget {
  const BranchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(), title: Strngs.branches),
      backgroundColor: AppColors.primaryAmber,
      body: const BranchesBody(),
    );
  }
}
