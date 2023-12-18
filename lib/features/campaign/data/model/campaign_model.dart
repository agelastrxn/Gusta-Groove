import 'package:restaurant/features/campaign/domain/entities/campaign_entity.dart';

class CampaignModel extends CampaignEntity {
  CampaignModel(
      {required super.name,
      required super.description,
      required super.photoUrl,
      required super.oldPrice,
      required super.newPrice,
      required super.ingredients});

  factory CampaignModel.fromJson(Map<String, dynamic> json) {
    return CampaignModel(
      name: json['name'],
      description: json['description'],
      photoUrl: json['photoUrl'],
      oldPrice: json['oldPrice'],
      newPrice: json['newPrice'],
      ingredients: json['ingredients'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'photoUrl': photoUrl,
      'oldPrice': oldPrice,
      'newPrice': newPrice,
      'ingredients': ingredients,
    };
  }
}
