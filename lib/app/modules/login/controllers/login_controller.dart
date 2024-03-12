import 'package:eroyal/app/core/helper.dart';
import 'package:eroyal/app/core/localdb.dart';
import 'package:eroyal/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/result.dart';
import '../../../domain/entities/credential_entity.dart';
import '../../../domain/usecase/auth/login.dart';

class LoginController extends GetxController {
  TextEditingController emailOrPhoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  final loginKey = GlobalKey<FormState>();

  Future<void> login() async {
    late LoginParams params;
    late LoginUseCase login;
    late Result<CredentialEntity> result;
    // late String fcmToken;
    late String route;

    if (loginKey.currentState!.validate()) {
      print("cekk");
      params = LoginParams(
        email: emailOrPhoneNumber.text,
        password: password.text,
        // fcmToken: fcmToken,
      );

      login = LoginUseCase();

      result = await login.call(params);

      print(result.status.toString());

      if (result.status is Success) {
        final user = result.data;

        // final prefs = await SharedPreferences.getInstance();
        // prefs.setInt('user_id', user.id);
        // prefs.setString('user_email', user.email);
        // prefs.setString('user_name', user.name);
        // prefs.setString('user_code', user.code);
        // prefs.setString('user_phoneNumber', user.phoneNumber);
        // prefs.setString('user_username', user.username);
        // prefs.setString('user_imageProfile', user.imageProfile);
        // prefs.setString('user_fcmToken', user.fcmToken);

        LocalDb.credential = user;
        LocalDb.loggedIn = true;

        // print("LOCAL DB CREDENTIAL::::: ${LocalDb.credential}");
        // print("CREDENTIAL::::: ${LocalDb.credential}");
        // CredentialEntity? storedCredentials = LocalDb.getCredential();

        // if (storedCredentials != null) {
        //   print("Stored credentials: ${storedCredentials.fcmToken}");
        // } else {
        //   print("Failed to retrieve stored credentials.");
        // }

        route = Routes.BOTTOM_NAVIGATION_BAR;
        Get.offAllNamed(route);
      } else {
        print("fail");
        showSnack(result.message);
      }
    }
  }
}
