import 'package:dartz/dartz.dart';
import 'package:restaurant/features/contact/data/models/offer_model.dart';

abstract class IContactDataSource {
  Future<Either<Exception, bool>> sendOffer({required OfferModel offer});
}
