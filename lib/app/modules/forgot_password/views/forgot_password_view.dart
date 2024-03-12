import 'package:eroyal/app/core/validation.dart';
import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/theme.dart';
import '../../../core/widgets/formfield.dart';
import '../../../core/widgets/padding.dart';
import '../../../core/widgets/submit_button.dart';
import '../controllers/forgot_password_controller.dart';
import 'widgets/reset_password.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController>
    with Validation {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: EPadding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EText(
                  'Forgot Password',
                  style: EFonts.montserrat(6, 20),
                  color: black,
                ),
                GestureDetector(
                  onTap: () => Get.back(),
                  child: const SizedBox(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.close,
                      color: black,
                    ),
                  ),
                )
              ],
            ),
            const ESizedBox(
              height: 24,
            ),
            EText(
              "Don’t worry sometimes people can forget too, enter your email and we will send you a password reset link.",
              maxLines: 4,
              style: EFonts.montserrat(4, 14),
            ),
            const ESizedBox(
              height: 24 * 2,
            ),

            /// Text Field
            EText(
              'Email',
              color: primary,
              style: EFonts.montserrat(6, 18),
            ),
            const ESizedBox(
              height: 8,
            ),
            EFormField(
              controller: controller.email,
              validator: inputRequired,
              keyboardType: TextInputType.emailAddress,
            ),
            const ESizedBox(
              height: 24,
            ),

            /// Submit Button
            ESubmitButton(
              color: primary,
              onTap: () => Get.to(const ResetPasswordView()),
              large: true,
              action: "Sent",
            ),
          ],
        ),
      ),
    );
  }
}
