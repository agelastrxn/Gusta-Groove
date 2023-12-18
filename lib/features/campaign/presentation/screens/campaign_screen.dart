import 'package:restaurant/shared/additions/export.dart';

class CampaignScreen extends StatelessWidget {
  const CampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(), title: Strngs.campaign),
      backgroundColor: AppColors.primaryAmber,
      body: MultiBlocProvider(providers: [
        BlocProvider<CampaignCubit>(create: (context) => CampaignCubit()..getCampaign()),
      ], child: const CampaignBody()),
    );
  }
}
