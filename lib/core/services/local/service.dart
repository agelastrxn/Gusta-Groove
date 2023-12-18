import 'package:restaurant/shared/additions/export.dart';

class LocalService {
  final box = GetStorage(LocalKeys.boxName);

  static initStorage() async {
    await GetStorage.init(LocalKeys.boxName);
  }

  write(String key, dynamic value) async {
    await box.write(key, value);
  }

  dynamic read(String key) {
    return box.read(key);
  }

  void remove(String key) async {
    await box.remove(key);
  }
}
