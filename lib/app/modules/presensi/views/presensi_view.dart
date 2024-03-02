import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/presensi_controller.dart';

class PresensiView extends GetView<PresensiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PresensiView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PresensiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
