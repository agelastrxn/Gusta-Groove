import 'package:restaurant/shared/additions/export.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final RegisterWithEmailUsecase _usecase = injection.get();
  final AddUserUseCase _addUserUseCase = injection.get();
  final LocalService _localService = injection.get();

  void register({required String email, required String password, required UserModel user}) async {
    emit(RegisterLoading());
    await _usecase.call(RegisterWithEmailParams(email: email, password: password));
    var result = await _addUserUseCase.call(user);
    result.fold((l) => emit(RegisterError(message: l)), (r) async {
      if (r) {
        emit(RegisterSuccess());
        await _localService.write(LocalKeys.user, user);
      } else {
        emit(RegisterError(message: Exception(Strngs.error)));
      }
    });
  }
}
