import 'package:eroyal/app/core/assets.dart';
import 'package:eroyal/app/core/widgets/image_picture.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/theme.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());

    return const Scaffold(
      backgroundColor: white,
      body: Center(
        child: EImages(
          width: 200,
          name: imgLogo,
        ),
      ),
    );
  }
}
