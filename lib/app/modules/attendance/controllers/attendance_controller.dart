import 'package:get/get.dart';

class AttendanceController extends GetxController {
  //TODO: Implement PresensiController

  final count = 0.obs;

  @override
  void onClose() {}
  void increment() => count.value++;
}
