import 'package:restaurant/shared/additions/export.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ProfileCubit>();
    return SingleChildScrollView(
      child: SizedBox(
        child: Column(
          children: [
            const ShowUpAnimation(delay: 100, child: ProfilePic()),
            const SizedBox(height: 20),
            const Infos(),
            const SizedBox(height: 20),
            ShowUpAnimation(
              delay: 400,
              child: ProfileBloc(runtimeType: runtimeType, cubit: cubit),
            ),
          ],
        ),
      ),
    );
  }
}
