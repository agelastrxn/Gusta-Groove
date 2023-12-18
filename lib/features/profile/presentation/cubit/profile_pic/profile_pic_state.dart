part of 'profile_pic_cubit.dart';

abstract class ProfilePicState extends Equatable {
  const ProfilePicState();

  @override
  List<Object> get props => [];
}

class ProfilePicInitial extends ProfilePicState {}

class ProfilePicSuccess extends ProfilePicState {
  final String url;

  const ProfilePicSuccess(this.url);

  @override
  List<Object> get props => [url];
}

class ProfilePicError extends ProfilePicState {}

class ProfilePicLoading extends ProfilePicState {}
