import 'package:eroyal/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/assets.dart';
import '../../../core/widgets/show_dialog.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController email = TextEditingController();
  final forgotPasswordKey = GlobalKey<FormState>();

  void sentEmail() {
    if (forgotPasswordKey.currentState!.validate()) {
      alertDialog(
        imageUri: imgWarning,
        title: "Reset your Password",
        description:
            "We have just sent a confirmation code to your email address.",
        description2: "Call Team ITSM 022-1234-5678",
        labelButton: "Close",
        // labelButton2: "Lupa PIN",
        onTap: () => Get.offAllNamed(Routes.LOGIN),
        dismissible: false,
      );
      // blockedPinDialog(
      //   title: "Your account has been blocked",
      //   description:
      //       "You were blocked because you entered your password incorrectly 3 times. Please contact Customer Service",
      //   description2: "Call 022-1234-5678",
      //   labelButton: "Call Center",
      //   onTap: () => Get.toNamed(Routes.RESET_PASSWORD),
      // );
    }
  }
}
