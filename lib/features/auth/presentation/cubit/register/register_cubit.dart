import 'package:restaurant/shared/additions/export.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final RegisterWithEmailUsecase _usecase = injection.get();
  final AddUserUseCase _addUserUseCase = injection.get();
  final LocalService _localService = injection.get();

  void register({required UserModel user}) async {
    emit(RegisterLoading());
    final result = await _usecase.call(user);
    result.fold(
      (l) => emit(RegisterError(exception: l)),
      (r) async {
        await _addUserUseCase.call(user);
        await _localService.write(LocalKeys.user, user);
        emit(RegisterSuccess());
      },
    );
  }
}
