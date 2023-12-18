import 'package:restaurant/shared/additions/export.dart';

class ProfileBloc extends StatelessWidget {
  const ProfileBloc({
    super.key,
    required this.runtimeType,
    required this.cubit,
  });

  @override
  final Type runtimeType;
  final ProfileCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        switch (state.runtimeType) {
          case ProfileSuccess:
            CustomSnackbar.show(
              context: context,
              message: Strngs.logoutSuccess,
            );
          case ProfileError:
            CustomSnackbar.show(
              context: context,
              isError: true,
              message: Strngs.error,
            );
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case ProfileLoading:
            return const Center(child: CircularProgressIndicator());
        }
        return LogOutButton(cubit: cubit);
      },
    );
  }
}
