import 'package:eroyal/app/core/helper.dart';
import 'package:eroyal/app/core/localdb.dart';
import 'package:eroyal/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/result.dart';
import '../../../core/widgets/show_dialog.dart';
import '../../../domain/entities/credential_entity.dart';
import '../../../domain/usecase/auth/login.dart';

class LoginController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  final FocusNode focusNode = FocusNode();

  RxBool isFocus = false.obs;

  @override
  void onInit() {
    focusNode.addListener(_onFocusChange);
    super.onInit();
  }

  @override
  void dispose() {
    focusNode.removeListener(_onFocusChange);
    focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (focusNode.hasFocus == false) {
      isFocus(false);
    } else {
      isFocus(true);
    }

    debugPrint("Focus: ${focusNode.hasFocus.toString()}");
  }

  Future<void> login() async {
    late LoginParams params;
    late LoginUseCase login;
    late Result<CredentialEntity> result;
    // late String fcmToken;
    late String route;

    if (loginKey.currentState!.validate()) {
      print("cekk");
      showCustomSuccessSnackBar(title: "Login Success");
      // route = Routes.BOTTOM_NAVIGATION_BAR;
      // Get.offAllNamed(route);

      /// -- Remove comment if API is ready

      // params = LoginParams(
      //   email: username.text,
      //   password: password.text,
      //   // fcmToken: fcmToken,
      // );

      // login = LoginUseCase();

      // result = await login.call(params);

      // print(result.status.toString());

      // if (result.status is Success) {
      //   final user = result.data;

      //   // final prefs = await SharedPreferences.getInstance();
      //   // prefs.setInt('user_id', user.id);
      //   // prefs.setString('user_email', user.email);
      //   // prefs.setString('user_name', user.name);
      //   // prefs.setString('user_code', user.code);
      //   // prefs.setString('user_phoneNumber', user.phoneNumber);
      //   // prefs.setString('user_username', user.username);
      //   // prefs.setString('user_imageProfile', user.imageProfile);
      //   // prefs.setString('user_fcmToken', user.fcmToken);

      //   LocalDb.credential = user;
      //   LocalDb.loggedIn = true;

      //   // print("LOCAL DB CREDENTIAL::::: ${LocalDb.credential}");
      //   // print("CREDENTIAL::::: ${LocalDb.credential}");
      //   // CredentialEntity? storedCredentials = LocalDb.getCredential();

      //   // if (storedCredentials != null) {
      //   //   print("Stored credentials: ${storedCredentials.fcmToken}");
      //   // } else {
      //   //   print("Failed to retrieve stored credentials.");
      //   // }

      //   route = Routes.BOTTOM_NAVIGATION_BAR;
      //   Get.offAllNamed(route);
      // } else {
      //   print("fail");
      //   showSnack(result.message);
      // }
    }
  }
}
