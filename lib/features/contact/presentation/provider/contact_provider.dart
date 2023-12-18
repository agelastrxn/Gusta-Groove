import 'package:dartz/dartz.dart';
import 'package:restaurant/features/contact/data/models/offer_model.dart';
import 'package:restaurant/shared/additions/export.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactProvider extends ChangeNotifier {
  // bool isSuccess = false;
  final SendOfferUseCase _useCase = injection.get();
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;
  OfferModel offer = OfferModel(name: '', surName: '', email: '', content: '');

  Future<void> launch(url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  FormModel name = FormModel(label: Strngs.psw, errMsg: Strngs.nameError);
  FormModel surName = FormModel(label: Strngs.surName, errMsg: Strngs.surNameError);
  FormModel email = FormModel(label: Strngs.email, errMsg: Strngs.emailError);
  FormModel content = FormModel(label: Strngs.confirmPsw, errMsg: Strngs.contentError);

  validateName(v) {
    if (v != null && v.isEmpty) {
      return name.errMsg;
    } else {
      offer.name = v!;
      return null;
    }
  }

  validateSurName(v) {
    if (v != null && v.isEmpty) {
      return surName.errMsg;
    } else {
      offer.surName = v!;
      return null;
    }
  }

  validateEmail(v) {
    if (v != null && v.isEmpty) {
      return email.errMsg;
    } else {
      offer.email = v!;
      return null;
    }
  }

  validateContent(v) {
    if (v != null && v.isEmpty) {
      return content.errMsg;
    } else {
      offer.content = v!;
      return null;
    }
  }

  Future<Either<Exception, bool?>> sendOffer() async {
    var result = await _useCase.call(offer);
    _formKey.currentState!.reset();
    return result;
  }

  bool validateForm() => formKey.currentState!.validate() ? true : false;
}
