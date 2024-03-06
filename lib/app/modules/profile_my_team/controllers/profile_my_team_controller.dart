import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileMyTeamController extends GetxController {
  TextEditingController searchE = TextEditingController();

  String? search;

  Future<void> onChanged(String value) async {
    search = value;
  }
}
