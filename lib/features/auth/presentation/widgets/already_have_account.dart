import 'package:restaurant/shared/additions/export.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(Strngs.alreadyHaveAccount),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () => GO.toAndReplace(RouteKeys.loginPage),
          child: const Text(Strngs.login, style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
