import 'package:restaurant/shared/additions/export.dart';

class TabSkeleton extends StatelessWidget {
  const TabSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 80,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: AppRadiuses.indicator,
        ),
      ),
    );
  }
}
