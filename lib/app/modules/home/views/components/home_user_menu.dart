import 'package:eroyal/app/core/widgets/padding.dart';
import 'package:eroyal/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        childAspectRatio: 1 / 0.9,
      ),
      itemCount: controller.fiturList.length,
      itemBuilder: (context, index) {
        var i = controller.fiturList[index];
        return InkWell(
          onTap: () {
            if (i.name == "Tracking Document") {
              Get.toNamed(Routes.TRACKING_DOCUMENT);
            } else {
              Get.toNamed(Routes.COMING_SOON);
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                i.svgUrl,
                height: 48.h,
                width: 48.w,
              ),
              ESizedBox(
                height: 40,
                child: EPadding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 5,
                  ),
                  child: EText(
                    i.name,
                    style: EFonts.montserrat(6, 14),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
