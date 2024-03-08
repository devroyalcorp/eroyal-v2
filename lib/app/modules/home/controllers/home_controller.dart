import 'package:eroyal/app/data/models/home/fitur_model.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../../../core/assets.dart';

class HomeController extends GetxController {
  final Uri _url = Uri.parse(
      'https://www.cnbcindonesia.com/news/20231007014631-4-478652/cari-kasur-baru-murah-banget-di-transmart-full-day-sale');

  var fiturList = <Fitur>[
    Fitur(name: 'Task', svgUrl: icTask),
    Fitur(name: 'Dashboard', svgUrl: icDashboard),
    Fitur(name: 'Visit', svgUrl: icVisit),
    Fitur(name: 'E-Prosedur', svgUrl: icEProsedur),
    Fitur(name: 'Tracking Document', svgUrl: icTrackingDocument),
  ].obs;

  Future<void> launchUrlNews() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
