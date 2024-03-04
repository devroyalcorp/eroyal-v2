import 'package:eroyal/app/core/page.dart';
import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/modules/profile_edit/views/components/profile_data.dart';
import 'package:eroyal/app/modules/profile_edit/views/components/profile_photo.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_edit_controller.dart';

class ProfileEditView extends GetView<ProfileEditController> {
  const ProfileEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const EPage(
      customAppBarColor: primary,
      customAppBarTitleColor: white,
      title: "Edit Profile",
      padding: EdgeInsets.all(0),
      children: [
        ProfileEditPhotoView(),
        ProfileEditDataView(),
      ],
    );
  }
}
