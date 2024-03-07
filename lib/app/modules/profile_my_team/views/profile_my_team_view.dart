import 'package:eroyal/app/core/widgets/no_result_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/page.dart';
import '../../../core/theme.dart';
import '../../../core/widgets/search_field.dart';
import '../../../core/widgets/sizedbox.dart';
import '../controllers/profile_my_team_controller.dart';
import '../../../core/widgets/custom_card_profile.dart';

class ProfileMyTeamView extends GetView<ProfileMyTeamController> {
  const ProfileMyTeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return EPage(
      backBtn: true,
      title: "My Team",
      customAppBarTitleColor: white,
      customAppBarColor: primary,
      padding: const EdgeInsets.all(0),
      children: [
        ESearchField(
          controller: controller.searchE,
          onChanged: controller.onChanged,
        ),
        ESizedBox(
          height: 650,
          child: Obx(
            () => controller.filteredList.isNotEmpty
                ? ListView.separated(
                    separatorBuilder: (_, __) {
                      return const Divider();
                    },
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: controller.filteredList.length,
                    itemBuilder: (_, index) {
                      final data = controller.filteredList[index];
                      String initials = controller.generateInitials(data.name);
                      return CustomCardProfile(
                        avatarPicture: data.profilePicture.isNotEmpty
                            ? data.profilePicture
                            : initials,
                        shapeBorder: false,
                        textColor: black,
                        backgroundColor: white,
                        isAvatarPicture:
                            data.profilePicture.isNotEmpty ? true : false,
                        title: data.name,
                        subtitle: 'Last Activity ${data.lastActivity}',
                        thridLineTitle: data.locationVisit,
                        isThridLine: true,
                        suffixIcon: true,
                      );
                    },
                  )
                : const NoResultWidget(),
          ),
        ),
      ],
    );
  }
}
