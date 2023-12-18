import 'package:restaurant/shared/additions/export.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final LoginWithEmailUsecase _emailUsecase = injection.get();
  final GetUserUsecase _getUserUsecase = injection.get();
  final LocalService _localService = injection.get();

  void login({required String email, required String password}) async {
    emit(LoginLoading());
    var result = await _emailUsecase.call(LoginWithEmailParams(email: email, password: password));
    result.fold((l) => emit(LoginError(l)), (r) => emit(LoginSuccess()));
    await _getUserUsecase.call(email).then(
          (value) => value.fold(
            (l) => emit(LoginError(l)),
            (r) async => await _localService.write(LocalKeys.user, r),
          ),
        );
  }
}
