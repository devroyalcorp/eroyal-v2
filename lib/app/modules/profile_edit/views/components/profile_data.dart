import 'package:eroyal/app/core/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/assets.dart';
import '../../../../core/validation.dart';
import '../../../../core/widgets/formfield.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/submit_button.dart';
import '../../../../core/widgets/svg_picture.dart';
import '../../../../core/widgets/text.dart';
import '../../controllers/profile_edit_controller.dart';

class ProfileEditDataView extends GetView<ProfileEditController>
    with Validation {
  const ProfileEditDataView({super.key});
  @override
  Widget build(BuildContext context) {
    return EPadding(
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 28),
      child: Form(
        key: controller.editKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EText(
              "Profile Information",
              style: EFonts.montserrat(6, 14),
            ),
            const ESizedBox(height: 8),
            EText(
              "Name",
              style: EFonts.montserrat(4, 12),
            ),
            const ESizedBox(height: 8),
            EFormField(
              controller: controller.name,
              validator: inputRequired,
              hintText: "Your Name",
            ),
            const ESizedBox(height: 18),
            EText(
              "Email (Optional)",
              style: EFonts.montserrat(4, 12),
            ),
            const ESizedBox(height: 8),
            EFormField(
              controller: controller.email,
              enable: false,
              keyboardType: TextInputType.emailAddress,
              hintText: "your.example@mail.com",
            ),
            const ESizedBox(height: 18),
            EText(
              "Phone Number",
              style: EFonts.montserrat(4, 12),
            ),
            const ESizedBox(height: 8),
            EFormField(
              controller: controller.phone,
              keyboardType: TextInputType.number,
              validator: inputRequired,
              hintText: "08123456789",
            ),
            const ESizedBox(height: 18),
            EText(
              "Address",
              style: EFonts.montserrat(4, 12),
            ),
            const ESizedBox(height: 8),
            EFormField(
              controller: controller.address,
              keyboardType: TextInputType.text,
              validator: inputRequired,
              hintText: "Your address here",
            ),
            const ESizedBox(height: 24),
            InkWell(
              onTap: () {},
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: EPadding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ESvg(icDelete),
                    const ESizedBox(width: 8),
                    EText(
                      "Delete Account",
                      style: EFonts.montserrat(5, 14, red),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: EPadding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const ESvg(
                      icLock,
                      color: greyText,
                    ),
                    const ESizedBox(width: 8),
                    EText(
                      "Change Password?",
                      style: EFonts.montserrat(5, 14, greyText),
                    )
                  ],
                ),
              ),
            ),
            const ESizedBox(height: 40),
            ESubmitButton(
              onTap: () {
                Get.back();
              },
              large: true,
              action: "Save",
            ),
          ],
        ),
      ),
    );
  }
}
