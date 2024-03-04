import 'package:eroyal/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarController>(
      () => BottomNavigationBarController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
