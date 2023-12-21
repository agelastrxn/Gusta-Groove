import 'package:restaurant/shared/additions/export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  const CustomAppBar({super.key, required this.appBar, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Padding(padding: AppPaddings.leftPadding, child: Text(title)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
