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
          avatarPicture: true,
          title: 'Alghany Kennedy Adam',
          subtitle: 'alghanyka@gmail.com',
          isThridLine: true,
        ),
      ),
    );
  }
}
