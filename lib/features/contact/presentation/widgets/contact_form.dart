import 'package:restaurant/features/contact/presentation/provider/contact_provider.dart';
import 'package:restaurant/features/contact/presentation/widgets/custom_text_field.dart';
import 'package:restaurant/shared/additions/export.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ContactProvider>();
    return Form(
      key: provider.formKey,
      child: Column(
        children: [
          ShowUpAnimation(
            delay: 400,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    label: Strngs.name,
                    validator: (v) => provider.validateName(v),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: CustomTextField(
                    label: Strngs.surName,
                    validator: (v) => provider.validateSurName(v),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ShowUpAnimation(
            delay: 500,
            child: CustomTextField(
              label: Strngs.email,
              validator: (v) => provider.validateEmail(v),
            ),
          ),
          const SizedBox(height: 20),
          ShowUpAnimation(
            delay: 600,
            child: CustomTextField(
              label: Strngs.content,
              maxLines: 5,
              validator: (v) => provider.validateContent(v),
            ),
          ),
          const SizedBox(height: 20),
          ShowUpAnimation(
            delay: 700,
            child: TextButton(
              onPressed: () async {
                if (provider.validateForm()) {
                  var result = await provider.sendOffer();
                  result.fold(
                    (l) =>
                        CustomSnackbar.show(context: context, isError: true, message: Strngs.error),
                    (r) => CustomSnackbar.show(context: context, message: Strngs.offerSuccess),
                  );
                }
              },
              child: const Text(Strngs.send),
            ),
          ),
        ],
      ),
    );
  }
}
