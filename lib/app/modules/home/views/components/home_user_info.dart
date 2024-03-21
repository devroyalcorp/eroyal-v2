import 'package:eroyal/app/core/localdb.dart';
import 'package:eroyal/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/padding.dart';

class HomeUserInfo extends GetView<HomeController> {
  const HomeUserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: EPadding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        child: CustomCard(
          shapeBorder: true,
          isAvatarPicture: true,
          title: "alghany@gmail.com", // controller.email.value,
          subtitle: "08123456789", //controller.phoneNumber.value,
          thridLineTitle:
              "120299240321 | Admin Sales", //"${controller.code.value} | ${controller.name.value}",
          isThridLine: true,
          suffixIcon: false,
        ),
        // Obx(
        //   () => const CustomCard(
        //     shapeBorder: true,
        //     isAvatarPicture: true,
        //     title: "alghany@gmail.com", // controller.email.value,
        //     subtitle: "08123456789", //controller.phoneNumber.value,
        //     thridLineTitle:
        //         "120299240321 | Admin Sales", //"${controller.code.value} | ${controller.name.value}",
        //     isThridLine: true,
        //     suffixIcon: false,
        //   ),
        // ),
      ),
    );
  }
}
