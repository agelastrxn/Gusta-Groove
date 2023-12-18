import 'package:restaurant/features/menu/domain/entities/menu_item_entity.dart';

class MenuItemModel extends MenuItemEntity {
  MenuItemModel({
    required super.name,
    required super.price,
    required super.description,
    required super.photoUrl,
    required super.ingredients,
  });

  factory MenuItemModel.fromJson(Map<String, dynamic> json) {
    return MenuItemModel(
      name: json['name'],
      price: json['price'],
      description: json['description'],
      photoUrl: json['photoUrl'],
      ingredients: json['ingredients'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'photoUrl': photoUrl,
      'ingredients': ingredients,
    };
  }
}
