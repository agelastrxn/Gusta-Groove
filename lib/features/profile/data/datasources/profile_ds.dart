import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:restaurant/core/services/remote/firebase_storage_service.dart';
import 'package:restaurant/features/profile/domain/usecases/update_user_usecase.dart';
import 'package:restaurant/shared/additions/export.dart';

class ProfileDataSource implements IProfileDataSource {
  final FirebaseAuthService _firebaseService = injection.get();
  final FirebaseDBService _firebaseDBService = injection.get();
  final FirebaseStorageService _firebaseStorageService = injection.get();
  @override
  Future<void> logOut() async {
    return await _firebaseService.logOut();
  }

  @override
  Future<Either<Exception, UserModel>> updateUser(UpdatePPParams params) async {
    String url = await _firebaseStorageService.uploadFile(File(params.photoUrl));
    return await _firebaseDBService.updateUser(params.email, url);
  }
}
