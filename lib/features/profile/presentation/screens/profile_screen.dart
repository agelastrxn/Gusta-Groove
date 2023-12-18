import 'package:restaurant/features/profile/presentation/cubit/profile_pic/profile_pic_cubit.dart';
import 'package:restaurant/shared/additions/export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(), title: Strngs.profile),
      backgroundColor: AppColors.primaryAmber,
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider<ProfileProvider>(create: (_) => ProfileProvider()),
          BlocProvider<ProfilePicCubit>(create: (_) => ProfilePicCubit()..getProfilePic()),
          BlocProvider<ProfileCubit>(create: (_) => ProfileCubit()),
        ],
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(padding: AppPaddings.defaultPadding, child: const ProfileBody()),
        ),
      ),
    );
  }
}
