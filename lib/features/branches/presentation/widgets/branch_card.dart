import 'package:restaurant/shared/additions/export.dart';

class BranchCard extends StatelessWidget {
  final String text;
  const BranchCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: AppRadiuses.defaultRadius,
          color: AppColors.tileColor,
        ),
        child: ListTile(
          leading: const Icon(Icons.location_on_outlined),
          title: Text(text, style: AppTextStyle.branchName),
          subtitle: const Text(Strngs.location),
        ),
      ),
    );
  }
}
