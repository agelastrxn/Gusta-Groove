import 'package:restaurant/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.email,
    required super.name,
    required super.surName,
    required super.password,
    required super.photoUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      name: json['name'],
      surName: json['surName'],
      password: json['password'],
      photoUrl: json['photoUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'surName': surName,
      'password': password,
      'photoUrl': photoUrl,
    };
  }

  set setProfileUrl(String newProfileUrl) {
    photoUrl = newProfileUrl;
  }
}
