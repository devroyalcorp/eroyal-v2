import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../data/models/login/credential_model.dart';
import '../domain/entities/credential_entity.dart';
import 'helper.dart';

class LocalDb {
  static late SharedPreferences _prefs;
  static const _keyLoggedin = "logged_in";
  static const _keyCreds = "credential";

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static bool get loggedIn => _prefs.getBool(_keyLoggedin) ?? false;

  static set loggedIn(bool value) => _prefs.setBool(_keyLoggedin, value);

  static set credential(CredentialEntity? creds) {
    print("SET CREDENTIAL ID:::: ${creds?.id.toString()}");
    Map<String, dynamic> data = {
      "id": creds?.id.toString(),
      "email": creds?.email,
      "name": creds?.name,
      "code": creds?.code,
      "phone_number": creds?.phoneNumber,
      "image_profile": creds?.imageProfile,
      // "actions": creds?.actions,
      "fcm_token": creds?.fcmToken,
      "username": creds?.username,
      // "visit_plans": creds?.visitPlans,
    };

    print("SET CREDENTIAL DATA::::::: $data");

    _prefs.setString(_keyCreds, jsonEncode(data));
  }

  static CredentialEntity? getCredential() {
    String? jsonData = _prefs.getString(_keyCreds);

    if (jsonData != null) {
      Map<String, dynamic> data = jsonDecode(jsonData);
      return CredentialEntity(
        id: int.parse(data["id"]),
        email: data["email"],
        name: data["name"],
        code: data["code"],
        phoneNumber: data["phone_number"],
        imageProfile: data["image_profile"],
        actions: [],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        fcmToken: data["fcm_token"],
        username: data["username"],
        visitPlans: [],
      );
    } else {
      return null;
    }
  }

  // static CredentialEntity? get credential {
  //   try {
  //     Map<String, dynamic> data = jsonDecode(_prefs.getString(_keyCreds) ?? "");

  //     if (isNotEmpty(data)) {
  //       return CredentialModel.fromJson(data);
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     return null;
  //   }
  // }

  // static CredentialEntity? get credential {
  //   try {
  //     String? jsonData = _prefs.getString(_keyCreds);

  //     if (jsonData != null) {
  //       Map<String, dynamic> data = jsonDecode(jsonData);
  //       print("LOCAL DB GET CREDENTIAL DATA::::: $data");
  //       final credentialModel = CredentialModel.fromJson(data);
  //       print("LOCAL DB DATA MODEL::::: $credentialModel");
  //       return credentialModel;
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     return null;
  //   }
  // }

  static void logout() {
    _prefs.remove(_keyCreds);
    _prefs.remove(_keyLoggedin);
  }
}
