import 'package:get/get.dart';

import '../../../core/assets.dart';
import '../../../routes/app_pages.dart';

class ProfileController extends GetxController {
  final data = <String, String>{
    "My Team": icMyTeam,
    "My Customers": icMyCustomers,
    "My Report": icReport,
    "Privacy Policy": icPrivacyPolicy,
    "Settings": icSettings,
    "Help Center": icHelpCenter,
  };

  void edit() {
    Get.toNamed(Routes.PROFILE_EDIT);
  }

  void logout() {
    Get.back();

    Get.offAllNamed(Routes.LOGIN);
  }
}
