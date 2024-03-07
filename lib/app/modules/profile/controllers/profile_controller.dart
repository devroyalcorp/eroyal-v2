import 'package:get/get.dart';

import '../../../core/assets.dart';
import '../../../data/profile/fitur_profile_model.dart';
import '../../../routes/app_pages.dart';

class ProfileController extends GetxController {
  List<FiturProfile> listFiturProfile = <FiturProfile>[
    FiturProfile(name: "My Team", icon: icMyTeam),
    FiturProfile(name: "My Customer", icon: icMyCustomers),
    FiturProfile(name: "My Report", icon: icReport),
    FiturProfile(name: "Privacy Policy", icon: icPrivacyPolicy),
    FiturProfile(name: "Settings", icon: icSettings),
    FiturProfile(name: "Help Center", icon: icHelpCenter),
  ];

  void edit() {
    Get.toNamed(Routes.PROFILE_EDIT);
  }

  void logout() {
    Get.back();

    Get.offAllNamed(Routes.LOGIN);
  }
}
