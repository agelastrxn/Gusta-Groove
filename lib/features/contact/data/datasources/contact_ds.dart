import 'package:dartz/dartz.dart';
import 'package:restaurant/features/contact/data/models/offer_model.dart';
import 'package:restaurant/shared/additions/export.dart';

class ContactDataSource implements IContactDataSource {
  final FirebaseDBService _dbService = injection.get();
  @override
  Future<Either<Exception, bool>> sendOffer({required OfferModel offer}) async {
    return await _dbService.sendOffer(offer);
  }
}
