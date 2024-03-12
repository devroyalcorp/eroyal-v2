import 'package:eroyal/app/core/localdb.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/padding.dart';

class HomeUserInfo extends StatelessWidget {
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
          title: "LocalDb.credential!.name",
          subtitle: "LocalDb.credential!.email",
          thridLineTitle:
              "${"LocalDb.credential!.code"} | ${"LocalDb.credential!.name"}",
          isThridLine: true,
          suffixIcon: false,
        ),
      ),
    );
  }
}
