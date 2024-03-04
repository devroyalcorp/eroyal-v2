import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/svg_picture.dart';
import '../../../../core/widgets/text.dart';
import '../../controllers/profile_controller.dart';

class ProfileHeader extends GetView<ProfileController> {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return EPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 28,
      ),
      child: Material(
        color: primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          side: BorderSide(
            color: primary,
          ),
        ),
        child: EPadding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(90),
                ),
                child: Image.asset(
                  imgProfile,
                  height: 68,
                  width: 68,
                  fit: BoxFit.cover,
                ),
              ),
              const ESizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EText(
                    "Alghany Kennedy Adam",
                    style: EFonts.montserrat(6, 16),
                    color: white,
                  ),
                  EText(
                    "085872049687",
                    style: EFonts.montserrat(4, 12),
                    color: white,
                    height: 2,
                  ),
                  EText(
                    "alghanyka@gmail.com",
                    style: EFonts.montserrat(4, 12),
                    color: white,
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: controller.edit,
                child: const EPadding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: ESvg(
                      icEdit,
                      color: white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
