import 'package:get/get.dart';

import '../controllers/profile_my_customers_controller.dart';

class ProfileMyCustomersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileMyCustomersController>(
      () => ProfileMyCustomersController(),
    );
  }
}
