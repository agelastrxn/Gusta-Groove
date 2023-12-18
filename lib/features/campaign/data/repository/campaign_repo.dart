import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class CampaignRepository implements ICampaignRepository {
  final ICampaignDataSource _campaignDataSource = injection.get();
  @override
  Future<Either<Exception, List<CampaignEntity>>> getCampaigns() async {
    return await _campaignDataSource.getCampaigns();
  }
}
