import 'package:restaurant/features/profile/presentation/cubit/profile_pic/profile_pic_cubit.dart';
import 'package:restaurant/shared/additions/export.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<ProfilePicCubit>();

    return GestureDetector(
      onTap: () => cubit.updateUser(context),
      child: BlocBuilder<ProfilePicCubit, ProfilePicState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case ProfilePicLoading:
              return const CircleAvatar(radius: 100, child: CircularProgressIndicator());
            case ProfilePicSuccess:
              return CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage((state as ProfilePicSuccess).url),
              );
          }
          return const CircleAvatar(radius: 100);
        },
      ),
    );
  }
}
