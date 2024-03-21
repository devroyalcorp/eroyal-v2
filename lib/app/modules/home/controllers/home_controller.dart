import 'package:eroyal/app/data/models/home/fitur_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../../../core/assets.dart';
import '../../../core/localdb.dart';
import '../../../domain/entities/credential_entity.dart';

class HomeController extends GetxController {
  final Uri _url = Uri.parse(
      'https://www.cnbcindonesia.com/news/20231007014631-4-478652/cari-kasur-baru-murah-banget-di-transmart-full-day-sale');
  final RxInt id = 0.obs;
  final RxString email = "".obs;
  final RxString userName = "".obs;
  final RxString name = "".obs;
  final RxString code = "".obs;
  final RxString phoneNumber = "".obs;
  final RxString imgProfile = "".obs;
  final RxString fcmToken = "".obs;

  var fiturList = <Fitur>[
    Fitur(name: 'Task', svgUrl: icTask),
    Fitur(name: 'Dashboard', svgUrl: icDashboard),
    Fitur(name: 'Visit', svgUrl: icVisit),
    Fitur(name: 'E-Prosedur', svgUrl: icEProsedur),
    Fitur(name: 'Tracking Document', svgUrl: icTrackingDocument),
  ].obs;

  // @override
  // void onInit() {
  //   init();
  //   super.onInit();
  // }

  // Future<void> init() async {
  //   CredentialEntity? storedCredentials = LocalDb.getCredential();

  //   id.value = storedCredentials?.id ?? 0;
  //   email.value = storedCredentials?.email ?? "";
  //   name.value = storedCredentials?.name ?? "";
  //   code.value = storedCredentials?.code ?? "";
  //   phoneNumber.value = storedCredentials?.phoneNumber ?? "";
  //   userName.value = storedCredentials?.username ?? "";
  //   imgProfile.value = storedCredentials?.imageProfile ?? "";
  //   fcmToken.value = storedCredentials?.fcmToken ?? "";
  // }

  Future<void> launchUrlNews() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
