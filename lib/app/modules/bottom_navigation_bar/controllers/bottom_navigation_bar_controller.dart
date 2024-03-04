import 'dart:async';

import 'package:eroyal/app/core/assets.dart';
import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/modules/home/views/home_view.dart';
import 'package:eroyal/app/modules/notification/views/notification_view.dart';
import 'package:eroyal/app/modules/presensi/views/presensi_view.dart';
import 'package:eroyal/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  final pages = <Widget>[
    const HomeView(),
    PresensiView(),
    NotificationView(),
    ProfileView(),
  ];

  final menuItems = <String, String>{
    "Home": icHome,
    "Presensi": icPresensi,
    "Notification": icNotification,
    "Profile": icProfile,
  };

  final currentIndex = 0.obs;

  bool isSelected(int index) => currentIndex.value == index;

  void selectMenu(int index) {
    currentIndex.value = index;
  }

  Future<bool> onWillPop() async {
    return await Get.dialog(
      AlertDialog(
        title: const Text('Exit App'),
        content: const Text('Do you want to exit an App?'),
        actions: [
          TextButton(
            child: const Text(
              "Yes",
              style: TextStyle(color: primary),
            ),
            onPressed: () {
              Get.back();
              SystemNavigator.pop();
            },
          ),
          TextButton(
            child: const Text(
              "Close",
              style: TextStyle(color: primary),
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
