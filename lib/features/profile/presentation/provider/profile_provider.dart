import 'package:restaurant/shared/additions/export.dart';

class ProfileProvider extends ChangeNotifier {
  String? imagePath;

  void updateImagePath(String path) {
    imagePath = path;
    notifyListeners();
  }
}
