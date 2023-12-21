import 'package:restaurant/core/services/local/storage.dart';
import 'package:restaurant/shared/additions/export.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      navigatorKey: GO.key,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      home: Storage.user == null
          ? const LoginScreen()
          : MultiBlocProvider(
              providers: [
                ChangeNotifierProvider<NavBarProvider>(
                    create: (_) => NavBarProvider())
              ],
              child: const HomeScreen(),
            ),
    );
  }
}
