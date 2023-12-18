import 'package:restaurant/shared/additions/export.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
    required this.runtimeType,
    required this.provider,
    required this.cubit,
  });

  @override
  final Type runtimeType;
  final FormProvider provider;
  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        switch (state.runtimeType) {
          case LoginError:
            final error = state as LoginError;
            CustomSnackbar.show(
              context: context,
              isError: true,
              message: error.message.toString(),
            );
          case LoginSuccess:
            GO.toAndReplace(RouteKeys.homePage);
            CustomSnackbar.show(context: context, message: Strngs.loginSuccess);
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case LoginLoading:
            return const Center(child: CircularProgressIndicator());
        }
        return CustomButton(
          label: Strngs.login,
          onPressed: () {
            if (provider.validateForm()) {
              cubit.login(email: provider.email.value!, password: provider.psw.value!);
            }
          },
        );
      },
    );
  }
}
