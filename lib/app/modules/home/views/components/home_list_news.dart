import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/assets.dart';
import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/text.dart';
import 'home_news_widget.dart';

class HomeListNews extends StatelessWidget {
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
                  image: imgNews1,
                  title:
                      "Crypto Analysts Predict Dogecoin To Hit \$1 As Pepe, Bonk, New Meme Coins Explode",
                  author: "James Spillane",
                  date: "4 March, 2024",
                  onTap: () {},
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
