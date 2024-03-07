import 'package:eroyal/app/core/widgets/padding.dart';
import 'package:eroyal/app/core/widgets/svg_picture.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../core/assets.dart';
import '../../../core/page.dart';
import '../../../core/theme.dart';
import '../../../core/widgets/formfield.dart';
import '../../../core/widgets/sizedbox.dart';
import '../controllers/profile_my_team_controller.dart';
import 'components/custom_card_my_team.dart';

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
          child: Obx(
            () => controller.filteredList.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: controller.filteredList.length,
                    itemBuilder: (_, index) {
                      final data = controller.filteredList[index];
                      String initials = _generateInitials(data.name);
                      return CustomCardMyTeam(
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
                : Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 250.h,
                        child: SizedBox(
                          height: 350.h,
                          width: 350.w,
                          child: Image.asset(imgNoResultGif),
                        ),
                      ),
                      Positioned(
                        top: 300.h,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: EPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Column(
                            children: [
                              EText(
                                "Sorry! No Result Found :(",
                                style: EFonts.montserrat(6, 20),
                                color: primary,
                                height: 2,
                              ),
                              EText(
                                "We'are sorry what you were looking for. Please try another keys.",
                                style: EFonts.montserrat(5, 16),
                                color: greyText,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}

String _generateInitials(String name) {
  List<String> nameSplit = name.split(" ");
  String firstNameInitial = nameSplit.first.substring(0, 1).toUpperCase();
  String lastNameInitial = nameSplit.last.substring(0, 1).toUpperCase();
  return "$firstNameInitial$lastNameInitial";
}
