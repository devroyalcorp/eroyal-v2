import 'package:eroyal/app/data/fitur_model.dart';
import 'package:get/get.dart';

import '../../../core/assets.dart';

class HomeController extends GetxController {
  var fiturList = <Fitur>[
    Fitur(name: 'Task', svgUrl: icTask),
    Fitur(name: 'Dashboard', svgUrl: icDashboard),
    Fitur(name: 'Visit', svgUrl: icVisit),
    Fitur(name: 'E-Prosedur', svgUrl: icEProsedur),
    Fitur(name: 'Tracking Document', svgUrl: icTrackingDocument),
  ].obs;
}
