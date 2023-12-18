import 'package:restaurant/features/contact/presentation/provider/contact_provider.dart';
import 'package:restaurant/shared/additions/export.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ContactProvider>();
    return SingleChildScrollView(
      child: Column(
        children: [
          ShowUpAnimation(
            delay: 200,
            child: SocialButton(
              title: Strngs.instagram,
              leading: AppIcons.instagram,
              onTap: () => provider.launch(Strngs.instagramUrl),
            ),
          ),
          const SizedBox(height: 20),
          ShowUpAnimation(
            delay: 100,
            child: SocialButton(
              title: Strngs.linkedin,
              leading: AppIcons.linkedin,
              onTap: () => provider.launch(Strngs.linkedinUrl),
            ),
          ),
          const SizedBox(height: 20),
          const ShowUpAnimation(delay: 300, child: DividerWithText(text: Strngs.or)),
          const SizedBox(height: 20),
          const ContactForm(),
        ],
      ),
    );
  }
}
