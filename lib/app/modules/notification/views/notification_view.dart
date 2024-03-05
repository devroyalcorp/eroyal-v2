import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/coming_soon.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComingSoonScreen();
  }
}
