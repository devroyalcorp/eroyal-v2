import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/submit_button.dart';
import '../../../../core/widgets/text.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: EPadding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ESizedBox(
              height: 280,
              child: Image.asset(imgEmailSentGif),
            ),
            EText(
              "Password Reset Email Sent",
              style: EFonts.montserrat(6, 22),
            ),
            const ESizedBox(
              height: 20,
            ),
            EText(
              "Your Account Security is Our Priority! We've Sent You a Secure Link to Safely Change Your Password and Keep Your Account Protected.",
              textAlign: TextAlign.center,
              maxLines: 4,
              style: EFonts.montserrat(4, 14),
            ),
            const ESizedBox(
              height: 24 * 2,
            ),

            /// Submit Button
            ESubmitButton(
              color: primary,
              onTap: () => Get.back(),
              large: true,
              action: "Done",
            ),
            const ESizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: EText(
                "Resent Email",
                style: EFonts.montserrat(6, 16),
                color: primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
