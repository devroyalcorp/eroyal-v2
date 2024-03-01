import 'package:eroyal/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    _onInit();
    super.onInit();
  }

  Future<void> _onInit() async {
    late String route;

    await Future.delayed(const Duration(seconds: 3));

    route = Routes.HOME;

    Get.offAllNamed(route);
  }
}
