import 'package:restaurant/shared/additions/export.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider<FormProvider>(create: (_) => FormProvider()),
          BlocProvider<RegisterCubit>(create: (_) => RegisterCubit())
        ],
        child: Padding(
            padding: AppPaddings.authPadding,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: const RegisterBody(),
            )),
      ),
    );
  }
}
