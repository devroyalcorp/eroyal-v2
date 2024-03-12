import 'package:eroyal/app/core/helper.dart';
import 'package:eroyal/app/core/localdb.dart';
import 'package:eroyal/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        LocalDb.credential = result.data;
        LocalDb.loggedIn = true;

        print("LOCAL DB CREDENTIAL::::: ${LocalDb.credential}");
        print("LOCAL DB CREDENTIAL::::: ${LocalDb.loggedIn}");

        route = Routes.BOTTOM_NAVIGATION_BAR;
        Get.offAllNamed(route);
      } else {
        print("fail");
        showSnack(result.message);
      }
    }
  }
}
