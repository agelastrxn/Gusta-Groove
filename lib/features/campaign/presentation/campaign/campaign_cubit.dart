import 'package:restaurant/shared/additions/export.dart';

part 'campaign_state.dart';

class CampaignCubit extends Cubit<CampaignState> {
  CampaignCubit() : super(CampaignInitial());

  final GetCampaignsUseCase _getCampaignsUseCase = injection.get();

  void getCampaign() async {
    emit(CampaignLoading());
    final result = await _getCampaignsUseCase.call(NoParams());
    result.fold(
      (failure) => emit(CampaignError(message: failure.toString())),
      (campaigns) => emit(CampaignSuccess(campaigns: campaigns)),
    );
  }
}
