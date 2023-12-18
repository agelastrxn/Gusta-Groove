import 'package:restaurant/shared/additions/export.dart';

class LogOutButton extends StatelessWidget {
  final ProfileCubit cubit;
  const LogOutButton({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => CustomAlertDialog.show(
        context: context,
        title: Strngs.logout,
        message: Strngs.logoutMessage,
        onConfirm: () => cubit.logOut(),
      ),
      child: const Text(Strngs.logout),
    );
  }
}
