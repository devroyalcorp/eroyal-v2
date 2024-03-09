import 'package:eroyal/app/domain/entities/credential_entity.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_card.dart';
import '../../../../core/widgets/padding.dart';

class HomeUserInfo extends StatelessWidget {
  const HomeUserInfo({
    super.key,
    required this.data,
  });

  final CredentialEntity data;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: EPadding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        child: CustomCard(
          shapeBorder: true,
          isAvatarPicture: true,
          title: data.username,
          subtitle: data.email,
          thridLineTitle: "${data.code} | ${data.name}",
          isThridLine: true,
          suffixIcon: false,
        ),
      ),
    );
  }
}
