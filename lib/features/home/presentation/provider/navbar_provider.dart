import 'package:restaurant/shared/additions/export.dart';

class NavBarProvider extends ChangeNotifier {
  final int _quraterTurns = 1;
  int _currentIndex = 2;
  int get currentIndex => _currentIndex;
  int get quraterTurns => _quraterTurns;

  void changeIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }

  Widget goIndex(index) {
    switch (index) {
      case 0:
        return const ProfileScreen();
      case 1:
        return const CampaignScreen();
      case 2:
        return const MenuScreen();
      case 3:
        return const BranchesScreen();
      case 4:
        return const ContactScreen();
      default:
        return const SizedBox();
    }
  }
}
