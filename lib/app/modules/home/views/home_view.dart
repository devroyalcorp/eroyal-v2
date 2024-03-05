import 'package:eroyal/app/core/assets.dart';
import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/widgets/image_picture.dart';
import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../core/widgets/padding.dart';
import '../controllers/home_controller.dart';
import 'components/home_news_widget.dart';
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
          SliverToBoxAdapter(
            child: EPadding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EText(
                        "Today's News",
                        style: EFonts.montserrat(6, 14),
                      ),
                      EText(
                        "lihat semua",
                        style: EFonts.montserrat(6, 14),
                        color: primary,
                      ),
                    ],
                  ),
                  const ESizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return HomeNewsWidget(
                          image: imgNews1,
                          title:
                              "Crypto Analysts Predict Dogecoin To Hit \$1 As Pepe, Bonk, New Meme Coins Explode",
                          author: "James Spillane",
                          date: "4 March, 2024",
                          onTap: () {},
                        );
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
