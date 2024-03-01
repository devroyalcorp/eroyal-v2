import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailOrPhoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  final loadingBtn = false.obs;

  void login() {
    if (loginKey.currentState!.validate()) {
      loadingBtn.value = true;
    } else {
      "Cant login";
    }
  }
}
