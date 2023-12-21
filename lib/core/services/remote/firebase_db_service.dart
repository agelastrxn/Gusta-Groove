import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:restaurant/features/auth/data/models/user_model.dart';
import 'package:restaurant/features/auth/domain/entities/user_entity.dart';
import 'package:restaurant/features/campaign/data/model/campaign_model.dart';
import 'package:restaurant/features/campaign/domain/entities/campaign_entity.dart';
import 'package:restaurant/features/contact/data/models/offer_model.dart';
import 'package:restaurant/features/menu/data/models/menu_item_model.dart';

class FirebaseDBService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Either<Exception, bool>> addUser(UserModel user) async {
    bool result = false;
    try {
      await _firestore.collection("users").add(user.toJson());
      result = true;
      return Right(result);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, UserEntity>> getUser(String email) async {
    try {
      var userSnapshot = await _firestore
          .collection("users")
          .where("email", isEqualTo: email)
          .get()
          .then((value) => value.docs.first.data());
      var user = UserModel.fromJson(userSnapshot);
      return Right(user);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, bool>> sendOffer(OfferModel offer) async {
    bool result = false;
    try {
      await _firestore.collection("offers").add(offer.toJson());
      result = true;
      return Right(result);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, List<Map<String, List<MenuItemModel>>>>>
      getMenu() async {
    var menuSnapshot = await _firestore.collection('menu').get();
    List<Map<String, List<MenuItemModel>>> menuTabItems = [];
    try {
      var tabNames =
          menuSnapshot.docs.map((doc) => doc['name'].toString()).toList();

      for (var tabName in tabNames) {
        List<MenuItemModel> tabItemsList = [];
        var tabId =
            menuSnapshot.docs.firstWhere((doc) => doc['name'] == tabName).id;
        var tabItemsSnapshot = await _firestore
            .collection('menu')
            .doc(tabId)
            .collection(tabName)
            .get();

        for (var itemDoc in tabItemsSnapshot.docs) {
          var menuItemModel = MenuItemModel.fromJson(itemDoc.data());
          tabItemsList.add(menuItemModel);
        }
        menuTabItems.add({tabName: tabItemsList});
      }
      return Right(menuTabItems);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, List<CampaignEntity>>> getCampaigns() async {
    try {
      var campaignsSnapshot = await _firestore.collection('campaign').get();
      var campaigns = campaignsSnapshot.docs
          .map((doc) => CampaignModel.fromJson(doc.data()))
          .toList();
      return Right(campaigns);
    } catch (e) {
      return Left(Exception(e));
    }
  }

  Future<Either<Exception, UserModel>> updateUser(
      String email, String url) async {
    try {
      await _firestore
          .collection("users")
          .where("email", isEqualTo: email)
          .get()
          .then(
              (value) => value.docs.first.reference.update({"photoUrl": url}));

      var userSnapshot = await _firestore
          .collection("users")
          .where("email", isEqualTo: email)
          .get()
          .then((value) => value.docs.first.data());
      var newUser = UserModel.fromJson(userSnapshot);
      return Right(newUser);
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
