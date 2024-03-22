import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/widgets/custom_card_rounded.dart';
import 'package:eroyal/app/core/widgets/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:get/get.dart';

import '../../../core/page.dart';
import '../controllers/attendance_controller.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return EPage(
      title: "Location Point",
      onPressed: () {
        pickDialog(
            title: "Pick Time Attendance",
            timeDesc: controller.date.value,
            onTapSelectTime: controller.setTime,
            onTap: () {
              Get.back();
            });
      },
      padding: const EdgeInsets.all(0),
      isFloatingActionButton: true,
      child: SizedBox(
        height: context.height - (kToolbarHeight * 1.75),
        child: FlutterMap(
          mapController: controller.map,
          options: const MapOptions(),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: CardRounded(
                child: Text(
                  "Your Schedule today is 'Work from Office' please registered your attendance within the designated area in your workspace.",
                  textAlign: TextAlign.center,
                  style: EFonts.montserrat(6, 14, primary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
