import 'package:dartz/dartz.dart';
import 'package:restaurant/features/contact/data/models/offer_model.dart';
import 'package:restaurant/shared/additions/export.dart';

class SendOfferUseCase implements UseCase<OfferModel, bool> {
  final IContactRepository _repo = injection.get();
  @override
  Future<Either<Exception, bool>> call(OfferModel offer) async {
    return await _repo.sendOffer(offer: offer);
  }
}
