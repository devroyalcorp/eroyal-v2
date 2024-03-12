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

  static CredentialEntity? get credential {
    try {
      Map<String, dynamic> data = jsonDecode(_prefs.getString(_keyCreds) ?? "");

      if (isNotEmpty(data)) {
        print("LOCAL DB DATA::::: $data");
        return CredentialModel.fromJson(data);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static set credential(CredentialEntity? creds) {
    Map<String, String?> data = {
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

    _prefs.setString(_keyCreds, jsonEncode(data));
  }

  static void logout() {
    _prefs.remove(_keyCreds);
    _prefs.remove(_keyLoggedin);
  }
}
