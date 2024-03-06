import 'package:get/get.dart';

import '../controllers/profile_my_team_controller.dart';

class ProfileMyTeamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileMyTeamController>(
      () => ProfileMyTeamController(),
    );
  }
}
