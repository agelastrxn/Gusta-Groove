import 'package:dartz/dartz.dart';
import 'package:restaurant/features/contact/data/models/offer_model.dart';
import 'package:restaurant/shared/additions/export.dart';

class ContactRepository implements IContactRepository {
  final IContactDataSource _repo = injection.get();
  @override
  Future<Either<Exception, bool>> sendOffer({required OfferModel offer}) async {
    return await _repo.sendOffer(offer: offer);
  }
}
