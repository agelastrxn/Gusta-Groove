import 'package:restaurant/features/contact/domain/entities/offer_entity.dart';

class OfferModel extends OfferEntity {
  OfferModel({
    required super.name,
    required super.surName,
    required super.email,
    required super.content,
  });


    factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      name: json['name'],
      surName: json['surName'],
      email: json['email'],
      content: json['content'],

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surName': surName,
      'email': email,
      'content': content,
    };
  }
}
