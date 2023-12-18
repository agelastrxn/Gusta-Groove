import 'package:restaurant/shared/additions/export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider<FormProvider>(create: (_) => FormProvider()),
          BlocProvider<LoginCubit>(create: (_) => LoginCubit()),
        ],
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(padding: AppPaddings.authPadding, child: const LoginBody())),
      ),
    );
  }
}
