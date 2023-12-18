import 'package:dartz/dartz.dart';
import 'package:restaurant/features/contact/data/models/offer_model.dart';

abstract class IContactRepository {
  Future<Either<Exception, bool>> sendOffer({required OfferModel offer});
}
