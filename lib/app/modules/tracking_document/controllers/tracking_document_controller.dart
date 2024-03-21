import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/data/models/tracking_document/dummy_tracking_document.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackingDocumentController extends GetxController {
  TextEditingController searchD = TextEditingController();

  RxList<DummyTrackingDocument> filteredDocument =
      <DummyTrackingDocument>[].obs;

  List<DummyTrackingDocument> listDummyDocument = <DummyTrackingDocument>[
    DummyTrackingDocument(
      title: 'Price Agreement New Product',
      date: '2024-01-30',
      noDocument: "192",
      status: "Approved",
      statusColor: green,
    ),
    DummyTrackingDocument(
      title: 'Price Agreement New Product',
      date: '2024-01-30',
      noDocument: "191",
      status: "Waiting",
      statusColor: Colors.orange,
    ),
    DummyTrackingDocument(
      title: 'Price Agreement New Product',
      date: '2024-01-30',
      noDocument: "190",
      status: "Rejected",
      statusColor: red,
    ),
  ];

  @override
  void onInit() {
    filteredDocument.value = listDummyDocument;
    super.onInit();
  }

  void onChanged(String value) {
    List<DummyTrackingDocument> result = <DummyTrackingDocument>[];
    if (value.isEmpty) {
      result = listDummyDocument;
    } else {
      result = listDummyDocument
          .where((e) => e.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    filteredDocument.value = result;
  }
}
