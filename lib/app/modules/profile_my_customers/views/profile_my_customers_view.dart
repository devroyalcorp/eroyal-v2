import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_my_customers_controller.dart';

class ProfileMyCustomersView extends GetView<ProfileMyCustomersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileMyCustomersView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileMyCustomersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
