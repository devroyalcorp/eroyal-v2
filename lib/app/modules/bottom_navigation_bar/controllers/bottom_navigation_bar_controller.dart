import 'dart:async';

import 'package:eroyal/app/core/assets.dart';
import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/modules/home/views/home_view.dart';
import 'package:eroyal/app/modules/notification/views/notification_view.dart';
import 'package:eroyal/app/modules/attendance/views/attendance_view.dart';
import 'package:eroyal/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/widgets/pop.dart';
import '../../../core/widgets/sizedbox.dart';
import '../../../core/widgets/submit_button.dart';
import '../../../core/widgets/text.dart';

class BottomNavigationBarController extends GetxController {
  final pages = <Widget>[
    const HomeView(),
    const AttendanceView(),
    const NotificationView(),
    const ProfileView(),
  ];

  final menuItems = <String, String>{
    "Home": icHome,
    "Attendance": icPresensi,
    "Notifications": icNotification,
    "Profile": icProfile,
  };

  final menuTitleItems = <String, String>{
    "Home": "Home",
    "Attendance": "Attendance",
    "Notification": "Notifications",
    "Profile": "Profile",
  };

  final currentIndex = 0.obs;

  bool isSelected(int index) => currentIndex.value == index;

  void selectMenu(int index) {
    currentIndex.value = index;
  }

  Future<bool> onWillPop() async {
    return await Get.dialog(
      EPop(
        children: [
          EText(
            "Exit App",
            style: EFonts.montserrat(5, 14),
          ),
          const ESizedBox(
            height: 8,
          ),
          EText(
            "Do you want to exit an App?",
            style: EFonts.montserrat(4, 14),
            maxLines: 10,
          ),
          const ESizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ESubmitButton(
                onTap: Get.back,
                action: "No",
                borderRadius: 4,
                outlined: true,
              ),
              const ESizedBox(
                width: 12,
              ),
              ESubmitButton(
                onTap: () {
                  Get.back();
                  SystemNavigator.pop();
                },
                action: "Yes",
                borderRadius: 4,
              ),
            ],
          )
        ],
      ),
    );
  }
}
