import 'package:eroyal/app/core/widgets/svg_picture.dart';
import 'package:eroyal/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/pop.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/submit_button.dart';
import '../../../../core/widgets/text.dart';
import '../../controllers/profile_controller.dart';

class ProfileMenu extends GetView<ProfileController> {
  const ProfileMenu({super.key});

  void _exit() {
    Get.dialog(
      EPop(
        children: [
          EText(
            "Logout Account",
            style: EFonts.montserrat(5, 14),
          ),
          const SizedBox(
            height: 8,
          ),
          EText(
            "Want to log out of your Account?",
            style: EFonts.montserrat(4, 14),
            maxLines: 10,
          ),
          const ESizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ESubmitButton(
                onTap: Get.back,
                action: "Cancel",
                borderRadius: 4,
                outlined: true,
              ),
              const ESizedBox(
                width: 12,
              ),
              ESubmitButton(
                onTap: controller.logout,
                action: "Yes, logout",
                borderRadius: 4,
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EPadding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: EText(
            "Menu",
            style: EFonts.montserrat(7, 14),
          ),
        ),
        const ESizedBox(
          height: 6,
        ),
        ESizedBox(
          height: 380,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: controller.listFiturProfile.length,
            itemBuilder: (_, index) {
              return _item(
                icon: controller.listFiturProfile[index].icon,
                action: controller.listFiturProfile[index].name,
                onTap: () {
                  controller.listFiturProfile[index].name == "My Team"
                      ? Get.toNamed(Routes.PROFILE_MY_TEAM)
                      : controller.listFiturProfile[index].name ==
                              "My Customers"
                          ? Get.toNamed(Routes.PROFILE_MY_CUSTOMERS)
                          : null;
                },
              );
            },
          ),
        ),
        _item(
          icon: icLogout,
          action: "Logout",
          onTap: _exit,
          color: red,
          suffix: false,
          iconColor: red,
        ),
      ],
    );
  }

  Widget _item({
    required String icon,
    required String action,
    bool? suffix,
    Color? color,
    Color? iconColor,
    required void Function() onTap,
  }) {
    return EPadding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Material(
        color: white,
        child: InkWell(
          onTap: onTap,
          child: EPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 18,
            ),
            child: Row(
              children: [
                ESvg(
                  icon,
                  radius: 24,
                  color: iconColor,
                ),
                const ESizedBox(width: 8),
                EText(
                  action,
                  style: EFonts.montserrat(5, 13, color),
                ),
                const Spacer(),
                if (suffix ?? true)
                  const ESvg(
                    icRight,
                    radius: 24,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
