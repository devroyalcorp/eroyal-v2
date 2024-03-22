import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';

class AttendanceController extends GetxController {
  final map = MapController();
  final RxString date = "Time Picker".obs;

  void setTime() async {
    DateTime scheduleTime = DateTime.now();
    // Show time picker and wait for user input
    TimeOfDay? pickedTime = await showTimePicker(
      context: Get.context!,
      initialTime: TimeOfDay.now(),
    );

    // Check if the user canceled the time picker
    if (pickedTime == null) {
      return;
    }

    // Handle the picked time, for example, assign it to a variable
    DateTime selectedDateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      pickedTime.hour,
      pickedTime.minute,
    );

    // Check if the selected time is in the future, if not, add a day
    if (selectedDateTime.isBefore(DateTime.now())) {
      selectedDateTime = selectedDateTime.add(const Duration(days: 1));
    }

    // Update scheduleTime with the selected time
    scheduleTime = selectedDateTime;

    // Format the date to display only the date portion
    String formattedTime =
        "${pickedTime.hour.toString().padLeft(2, '0')}:${pickedTime.minute.toString().padLeft(2, '0')}:00";
    // String formattedDate =
    //     "${scheduleTime.year}-${scheduleTime.month.toString().padLeft(2, '0')}-${scheduleTime.day.toString().padLeft(2, '0')}";

    // Debug print the scheduled time
    debugPrint('Notification Scheduled for $formattedTime');
    date.value = formattedTime;
  }
}
