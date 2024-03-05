import 'package:eroyal/app/core/assets.dart';
import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/widgets/image_picture.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'components/home_user_info.dart';
import 'components/home_user_menu.dart';
import 'components/home_user_status.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70.h,
        title: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EText(
                "Good Morning! ☀",
                style: EFonts.montserrat(4, 14),
              ),
              EText(
                "Alghany Kennedy!",
                style: EFonts.montserrat(6, 16),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: EImages(
              name: imgLogo,
              height: 55.h,
            ),
          )
        ],
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          const HomeUserInfo(),
          const HomeUserStatus(),
          HomeUserMenu(controller: controller),
        ],
      ),
    );
  }
}
