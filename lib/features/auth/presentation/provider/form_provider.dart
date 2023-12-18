import 'package:restaurant/shared/additions/export.dart';

class FormProvider extends ChangeNotifier {
  final UserModel user = UserModel(email: '', name: '', surName: '', password: '', photoUrl: '');
  final _formKey = GlobalKey<FormState>();
  // String? pswValue;

  bool isObscure = true;

  void toggleObsecure() {
    isObscure = !isObscure;
    notifyListeners();
  }

  GlobalKey<FormState> get formKey => _formKey;

  FormModel name = FormModel(
    label: Strngs.name,
    errMsg: Strngs.nameError,
  );
  FormModel surName = FormModel(label: Strngs.surName, errMsg: Strngs.surNameError);
  FormModel email = FormModel(label: Strngs.email, errMsg: Strngs.emailError);
  FormModel psw = FormModel(label: Strngs.psw, errMsg: Strngs.pswError);
  FormModel confirmPsw = FormModel(label: Strngs.confirmPsw, errMsg: Strngs.confirmPswError);

  validateName(String? v) {
    if (v != null && v.isEmpty) {
      return name.errMsg;
    } else {
      user.name = v!;
      name.value = v;
      return null;
    }
  }

  validateSurName(String? v) {
    if (v != null && v.isEmpty) {
      return surName.errMsg;
    } else {
      user.surName = v!;
      surName.value = v;
      return null;
    }
  }

  validateEmail(String? v) {
    if (v != null && !v.isEmailValid) {
      return email.errMsg;
    } else {
      user.email = v!;
      email.value = v;
      return null;
    }
  }

  validatePsw(String? v) {
    if (v != null && !v.isPasswordValid) {
      return psw.errMsg;
    } else {
      user.password = v!;
      // pswValue = v;
      psw.value = v;
      return null;
    }
  }

  validateConfirmPsw(String? v) {
    if (v != psw.value) {
      return confirmPsw.errMsg;
    } else {
      confirmPsw.value = v;
      return null;
    }
  }

  bool validateForm() => formKey.currentState!.validate() ? true : false;
}
