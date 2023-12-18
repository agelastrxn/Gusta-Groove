part of 'campaign_cubit.dart';

abstract class CampaignState extends Equatable {
  const CampaignState();

  @override
  List<Object> get props => [];
}

class CampaignInitial extends CampaignState {}

class CampaignError extends CampaignState {
  final String message;

  const CampaignError({required this.message});

  @override
  List<Object> get props => [message];
}

class CampaignLoading extends CampaignState {}

class CampaignSuccess extends CampaignState {
  final List<CampaignEntity> campaigns;

  const CampaignSuccess({required this.campaigns});

  @override
  List<Object> get props => [campaigns];
}
