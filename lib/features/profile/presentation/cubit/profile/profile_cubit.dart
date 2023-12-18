import 'package:restaurant/core/services/local/storage.dart';
import 'package:restaurant/shared/additions/export.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  final LogOutUsecase _usecase = injection.get();


  void logOut() async {
    emit(ProfileLoading());
    await _usecase.call(NoParams());
    await Storage.logOut();
    GO.toAndReplace(RouteKeys.loginPage);
    emit(ProfileSuccess());
  }
}
