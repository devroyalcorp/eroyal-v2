import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/text.dart';
import '../../controllers/profile_controller.dart';

class ProfileHeader extends GetView<ProfileController> {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return EPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 15,
      ),
      child: Column(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(90),
              ),
              child: Image.asset(
                imgProfile,
                height: 80.r,
                width: 80.r,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const ESizedBox(height: 10),
          Column(
            children: [
              EText(
                "Alghany Kennedy Adam",
                style: EFonts.montserrat(6, 16),
              ),
              const ESizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: controller.edit,
                child: EText(
                  "Edit Profile",
                  style: EFonts.montserrat(5, 16, primary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
