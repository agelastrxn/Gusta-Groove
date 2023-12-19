import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:restaurant/core/services/local/storage.dart';
import 'package:restaurant/features/profile/domain/usecases/update_user_usecase.dart';
import 'package:restaurant/shared/additions/export.dart';
part 'profile_pic_state.dart';

class ProfilePicCubit extends Cubit<ProfilePicState> {
  ProfilePicCubit() : super(ProfilePicInitial());
  final ImagePicker _picker = injection.get();
  final GetUserUsecase _getUserUsecase = injection.get();
  final UpdateUserUseCase _updateUserUseCase = injection.get();
  UserModel user = Storage.user!;

  updateUser(BuildContext context) async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      emit(ProfilePicLoading());
      File imageFile = File(pickedFile.path);
      String? url;
      (await _updateUserUseCase
              .call(UpdatePPParams(user.email, imageFile.path)))
          .fold((l) => null, (r) => url = r.photoUrl);
      emit(ProfilePicSuccess(url: url!));
    }
  }

  getProfilePic() async {
    String? url;
    emit(ProfilePicLoading());
    (await _getUserUsecase.call(user.email)).fold((l) => null, (r) {
      return r.photoUrl != '' ? url = r.photoUrl : url = Strngs.noPhotoPic;
    });
    emit(ProfilePicSuccess(url: url!));
  }
}
