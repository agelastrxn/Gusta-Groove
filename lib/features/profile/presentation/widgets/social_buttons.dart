import 'package:restaurant/shared/additions/export.dart';

class SocialButton extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final FaIcon? leading;
  const SocialButton({super.key, required this.title, this.leading, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.defaultRadius,
        color: AppColors.tileColor,
      ),
      child: ListTile(
        leading: leading,
        title: Text(title),
        onTap: onTap,
      ),
    );
  }
}
