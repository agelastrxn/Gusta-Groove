import 'package:restaurant/shared/additions/export.dart';

LocalService _service = injection.get();

class Storage {
  static logOut() {
    _service.remove(LocalKeys.user);
  }

  static UserModel? get user {
    dynamic userData = _service.read(LocalKeys.user);
    if (userData is UserModel) {
      return userData;
    } else if (userData is Map<String, dynamic>) {
      return UserModel.fromJson(userData);
    }
    return null;
  }

  static updateProfilePicture (String newProfileUrl) {
    UserModel? user = Storage.user;
    if (user != null) {
      user.photoUrl = newProfileUrl;
      _service.write(LocalKeys.user, user);
    }
  }


}
