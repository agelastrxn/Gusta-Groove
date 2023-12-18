import 'package:restaurant/shared/additions/export.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(Strngs.noAccount),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () => GO.toAndReplace(RouteKeys.registerPage),
          child: const Text(Strngs.register, style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
