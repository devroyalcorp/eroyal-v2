import 'package:eroyal/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/theme.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/text.dart';
import '../../controllers/home_controller.dart';

class HomeUserMenu extends GetView<HomeController> {
  const HomeUserMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1 / 1.1,
        ),
        itemCount: controller.fiturList.length,
        itemBuilder: (context, index) {
          var i = controller.fiturList[index];
          return InkWell(
            onTap: () {
              Get.toNamed(Routes.COMING_SOON);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ESizedBox(
                  height: 45,
                  width: 40,
                  child: SvgPicture.asset(i.svgUrl),
                ),
                const ESizedBox(
                  height: 10,
                ),
                ESizedBox(
                  child: EText(
                    i.name,
                    style: EFonts.montserrat(6, 12),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
