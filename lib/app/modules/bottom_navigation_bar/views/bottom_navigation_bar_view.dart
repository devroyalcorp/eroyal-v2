// ignore_for_file: deprecated_member_use

import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/widgets/svg_picture.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  const BottomNavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Scaffold(
        body: SizedBox(
          height: context.height,
          width: context.width,
          child: Column(
            children: [
              Expanded(
                child: Obx(
                  () => IndexedStack(
                    index: controller.currentIndex.value,
                    children: controller.pages,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10.h,
                  horizontal: 20.w,
                ),
                decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      controller.menuItems.length,
                      (index) => controller.isSelected(index)
                          ? Column(
                              children: [
                                ESvg(
                                  controller.menuItems.values.elementAt(index),
                                  color: primary,
                                  height: 30,
                                ),
                                EText(
                                  controller.menuTitleItems.values
                                      .elementAt(index),
                                  color: primary,
                                ),
                              ],
                            )
                          : InkWell(
                              onTap: () => controller.selectMenu(index),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ESvg(
                                    controller.menuItems.values
                                        .elementAt(index),
                                    color: greyIcon,
                                  ),
                                ],
                              ),
                            ),
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
