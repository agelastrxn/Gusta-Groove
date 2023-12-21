import 'package:restaurant/shared/additions/export.dart';

class TabViewSkeleton extends StatelessWidget {
  const TabViewSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 15,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: AppRadiuses.defaultRadius,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: AppColors.indicator,
            borderRadius: AppRadiuses.card,
          ),
        ),
        const SizedBox(height: 10),
        const Divider()
      ],
    );
  }
}
