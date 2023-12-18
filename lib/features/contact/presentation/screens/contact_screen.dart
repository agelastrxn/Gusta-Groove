import 'package:restaurant/features/contact/presentation/provider/contact_provider.dart';
import 'package:restaurant/shared/additions/export.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(), title: Strngs.contact),
      backgroundColor: AppColors.primaryAmber,
      body: MultiBlocProvider(
        providers: [
          ChangeNotifierProvider<ContactProvider>(create: (_) => ContactProvider()),
        ],
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(padding: AppPaddings.defaultPadding, child: const ContactBody()),
        ),
      ),
    );
  }
}
