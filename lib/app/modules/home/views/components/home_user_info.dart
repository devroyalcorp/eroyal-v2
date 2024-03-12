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
    return SliverToBoxAdapter(
      child: EPadding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        child: Obx(
          () => CustomCard(
            shapeBorder: true,
            isAvatarPicture: true,
            title: controller.email.value,
            subtitle: controller.phoneNumber.value,
            thridLineTitle:
                "${controller.code.value} | ${controller.name.value}",
            isThridLine: true,
            suffixIcon: false,
          ),
        ),
      ),
    );
  }
}
