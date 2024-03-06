import 'package:eroyal/app/core/widgets/padding.dart';
import 'package:eroyal/app/core/widgets/svg_picture.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/assets.dart';
import '../../../core/page.dart';
import '../../../core/theme.dart';
import '../../../core/widgets/custom_card.dart';
import '../../../core/widgets/formfield.dart';
import '../../../core/widgets/sizedbox.dart';
import '../controllers/profile_my_team_controller.dart';

class ProfileMyTeamView extends GetView<ProfileMyTeamController> {
  const ProfileMyTeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return EPage(
      title: "My Team",
      customAppBarTitleColor: white,
      customAppBarColor: primary,
      padding: const EdgeInsets.all(0),
      children: [
        EPadding(
          padding:
              const EdgeInsets.only(left: 18, right: 18, top: 20, bottom: 8),
          child: ESizedBox(
            height: 50,
            child: EFormField(
              controller: controller.searchE,
              autoFocus: false,
              onChanged: controller.onChanged,
              hintText: "Search",
              focusedColor: primary,
              borderColor: grey,
              prefixIcon: const EPadding(
                padding: EdgeInsets.all(10),
                child: ESvg(
                  icSearch,
                  fit: BoxFit.contain,
                  color: greyIcon,
                ),
              ),
            ),
          ),
        ),
        ESizedBox(
          height: 650,
          child: Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: 22,
              itemBuilder: (_, index) {
                return const CustomCard(
                  shapeBorder: false,
                  textColor: black,
                  backgroundColor: white,
                  avatarPicture: true,
                  title: 'Alghany Kennedy Adam',
                  subtitle: 'Last Activity 06/03/2024 12:49 PM',
                  thridLineTitle: "Visited PANJI WORKSHOP",
                  isThridLine: true,
                  suffixIcon: true,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
