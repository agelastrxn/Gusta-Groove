import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class GetCampaignsUseCase extends UseCase<NoParams, List<CampaignEntity>> {
  final ICampaignRepository _campaignRepository = injection.get();
  @override
  Future<Either<Exception, List<CampaignEntity>>> call(NoParams params) async {
    return await _campaignRepository.getCampaigns();
  }
}
