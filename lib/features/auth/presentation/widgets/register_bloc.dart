import 'package:restaurant/shared/additions/export.dart';

class RegisterBloc extends StatelessWidget {
  const RegisterBloc({
    super.key,
    required this.runtimeType,
    required this.provider,
    required this.cubit,
  });

  @override
  final Type runtimeType;
  final FormProvider provider;
  final RegisterCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        switch (state.runtimeType) {
          case RegisterError:
            CustomSnackbar.show(
                context: context, isError: true, message: Strngs.registerError);
          case RegisterSuccess:
            GO.toAndReplace(RouteKeys.homePage);
            CustomSnackbar.show(
                context: context, message: Strngs.registerSuccess);
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case RegisterLoading:
            return const Center(child: CircularProgressIndicator());
        }
        return ElevatedButton(
          child: const Text(Strngs.register),
          onPressed: () {
            if (provider.validateForm()) {
              cubit.register(user: provider.user);
            }
          },
        );
      },
    );
  }
}
