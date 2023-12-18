import 'package:restaurant/shared/additions/export.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FormProvider>();
    final cubit = context.watch<LoginCubit>();
    return Form(
      key: provider.formKey,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset(Strngs.appLogoPath),
              const SizedBox(height: 30),
              FormTextField(
                  label: provider.email.label, validator: (v) => provider.validateEmail(v)),
              FormTextField(
                  label: provider.psw.label,
                  icon: GestureDetector(
                      onTap: provider.toggleObsecure,
                      child: Icon(provider.isObscure ? Icons.visibility : Icons.visibility_off)),
                  isObsecure: provider.isObscure,
                  validator: (v) => provider.validatePsw(v)),
              const SizedBox(height: 30),
              Login(runtimeType: runtimeType, provider: provider, cubit: cubit),
              const SizedBox(height: 30),
              const NoAccount(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
