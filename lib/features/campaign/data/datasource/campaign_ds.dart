import 'package:dartz/dartz.dart';
import 'package:restaurant/shared/additions/export.dart';

class CampaignDataSource implements ICampaignDataSource {
  final FirebaseDBService _firebaseDBService = injection.get();
  @override
  Future<Either<Exception, List<CampaignEntity>>> getCampaigns() async {
    return await _firebaseDBService.getCampaigns();
  }
}
