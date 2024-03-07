import 'package:flutter/material.dart';

import '../../../../core/theme.dart';
import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';
import '../../../../core/widgets/text.dart';

class HomeUserStatus extends StatelessWidget {
  const HomeUserStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: EPadding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EText(
                  "Habit for Today",
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
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(
                  shapeBorder: true,
                  isAvatarPicture: false,
                  title: 'Status',
                  subtitle: 'Work From Office',
                  isThridLine: false,
                  textColor: black,
                  backgroundColor: white,
                  borderSideColor: greyHint,
                  suffixIcon: false,
                ),
                CustomCard(
                  shapeBorder: true,
                  isAvatarPicture: false,
                  title: 'Clock-in',
                  subtitle: '08:00',
                  isThridLine: false,
                  textColor: black,
                  backgroundColor: white,
                  borderSideColor: greyHint,
                  suffixIcon: false,
                ),
                CustomCard(
                  shapeBorder: true,
                  isAvatarPicture: false,
                  title: 'Clock-out',
                  subtitle: '17:00',
                  isThridLine: false,
                  textColor: black,
                  backgroundColor: white,
                  borderSideColor: greyHint,
                  suffixIcon: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
