import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/text.dart';
import '../../controllers/home_controller.dart';
import 'home_news_widget.dart';

class HomeListNews extends GetView<HomeController> {
  const HomeListNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
              padding: EdgeInsets.only(top: 10.h),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (_, index) {
                return HomeNewsWidget(
                  image: imgNews2,
                  title:
                      "Cari Kasur Baru? Murah Banget di Transmart Full Day Sale",
                  author: "Teti Purwanti, CNBC Indonesia",
                  date: "7 Oct, 2023",
                  onTap: () => controller.launchUrlNews(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
