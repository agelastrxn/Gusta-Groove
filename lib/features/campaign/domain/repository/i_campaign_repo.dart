import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

abstract class ICampaignRepository {
  Future<Either<Exception, List<CampaignEntity>>> getCampaigns();
}
