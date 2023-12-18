import 'package:restaurant/shared/additions/export.dart';

class CustomFAB extends StatelessWidget {
  final IconData icon;
  const CustomFAB({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: AppColors.tileColor,
      child: Icon(icon),
    );
  }
}
