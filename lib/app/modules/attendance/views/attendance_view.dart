import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/coming_soon.dart';
import '../controllers/attendance_controller.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComingSoonScreen();
  }
}
