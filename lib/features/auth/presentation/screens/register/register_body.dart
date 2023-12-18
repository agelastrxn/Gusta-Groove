import 'package:restaurant/shared/additions/export.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<FormProvider>();
    final cubit = context.watch<RegisterCubit>();
    return Form(
      key: provider.formKey,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset(Strngs.appLogoPath),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: FormTextField(
                        label: provider.name.label, validator: (v) => provider.validateName(v)),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: FormTextField(
                        label: provider.surName.label,
                        validator: (v) => provider.validateSurName(v)),
                  ),
                ],
              ),
              FormTextField(
                  label: provider.email.label, validator: (v) => provider.validateEmail(v)),
              FormTextField(
                  label: provider.psw.label,
                  icon: GestureDetector(
                      onTap: provider.toggleObsecure,
                      child: Icon(provider.isObscure ? Icons.visibility : Icons.visibility_off)),
                  isObsecure: provider.isObscure,
                  validator: (v) => provider.validatePsw(v)),
              FormTextField(
                  label: provider.confirmPsw.label,
                  isObsecure: provider.isObscure,
                  validator: (v) => provider.validateConfirmPsw(v)),
              const SizedBox(height: 30),
              RegisterBloc(runtimeType: runtimeType, provider: provider, cubit: cubit),
              const SizedBox(height: 30),
              const AlreadyHaveAccount(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
