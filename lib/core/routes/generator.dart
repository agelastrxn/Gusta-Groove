import 'package:restaurant/features/detail/presentation/screens/detail_screen.dart';
import 'package:restaurant/shared/additions/export.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Map<String, PageRouteBuilder Function(dynamic)> routes = {
      RouteKeys.loginPage: (_) => route(const LoginScreen()),
      RouteKeys.registerPage: (_) => route(const RegisterScreen()),
      RouteKeys.homePage: (_) => route(MultiProvider(
          providers: [ChangeNotifierProvider<NavBarProvider>(create: (_) => NavBarProvider())],
          child: const HomeScreen())),
      RouteKeys.profilePage: (_) => route(const ProfileScreen()),
      RouteKeys.menuPage: (_) => route(const MenuScreen()),
      RouteKeys.campaignPage: (_) => route(const CampaignScreen()),
      RouteKeys.contactPage: (_) => route(const ContactScreen()),
      RouteKeys.branchesPage: (_) => route(const BranchesScreen()),
      RouteKeys.detailPage: (args) => route(const DetailScreen(), arguments: args as MenuItemModel),
    };

    final PageRouteBuilder Function(dynamic)? pageBuilder = routes[settings.name];
    if (pageBuilder != null) {
      return pageBuilder(settings.arguments);
    } else {
      return MaterialPageRoute(builder: (context) {
        return const Scaffold(
          body: Center(child: Text("404")),
        );
      });
    }
  }

  static PageRouteBuilder route(Widget widget, {dynamic arguments}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      settings: RouteSettings(arguments: arguments),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var scaleAnimation = animation.drive(tween);
        return Transform.scale(
          scale: scaleAnimation.value,
          child: child,
        );
      },
    );
  }
}
