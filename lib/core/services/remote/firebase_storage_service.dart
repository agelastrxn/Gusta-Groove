import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  Future<String> uploadFile(File file) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    var storageReference = storage.ref().child('images/${DateTime.now()}.png');
    var uploadTask = storageReference.putFile(file);
    await uploadTask.whenComplete(() => null);
    return await storageReference.getDownloadURL();
  }
}
