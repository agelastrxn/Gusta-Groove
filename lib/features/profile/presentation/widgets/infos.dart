import 'package:restaurant/core/services/local/storage.dart';
import 'package:restaurant/shared/additions/export.dart';

class Infos extends StatelessWidget {
  const Infos({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Storage.user!;
    String userName = "${user.name} ${user.surName}";
    return Column(children: [
      ShowUpAnimation(
          delay: 200,
          child: OnlyReadableTextField(
            label: Strngs.username,
            initialValue: userName,
          )),
      const SizedBox(height: 30),
      ShowUpAnimation(
          delay: 300,
          child: OnlyReadableTextField(
            label: Strngs.email,
            initialValue: user.email,
          )),
      // const SizedBox(height: 30),
      // const ShowUpAnimation(
      //     delay: 400,
      //     child: OnlyReadableTextField(
      //       label: Strngs.bonus,
      //       initialValue: "0.10",
      //     )),
    ]);
  }
}
