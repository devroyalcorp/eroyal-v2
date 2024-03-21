import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tracking_document_controller.dart';

class TrackingDocumentView extends GetView<TrackingDocumentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TrackingDocumentView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TrackingDocumentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
