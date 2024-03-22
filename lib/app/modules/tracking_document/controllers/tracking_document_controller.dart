import 'package:another_stepper/another_stepper.dart';
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
      title: 'Example Document Lorem Ipsum 1',
      date: '2024-01-30',
      noDocument: "192",
      status: "Approved",
      textColor: green,
      statusColor: green12,
    ),
    DummyTrackingDocument(
      title: 'Example Document Lorem Ipsum 2',
      date: '2024-01-30',
      noDocument: "191",
      status: "Waiting",
      textColor: Colors.orange,
      statusColor: Colors.orange.withOpacity(0.2),
    ),
    DummyTrackingDocument(
      title: 'Example Document Lorem Ipsum 3',
      date: '2024-01-30',
      noDocument: "190",
      status: "Rejected",
      textColor: red,
      statusColor: red10,
    ),
  ];

  List<StepperData> stepperData = [
    StepperData(
      title: StepperText("Draft"),
      subtitle: StepperText("23 Aug 2023, 04:25 PM"),
      iconWidget: Container(
        decoration: const BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: const Center(
          child: Icon(Icons.check, color: white, size: 16),
        ),
      ),
    ),
    StepperData(
      title: StepperText("Waiting"),
      subtitle: StepperText("23 Aug 2023, 06:13 PM"),
      iconWidget: Container(
        decoration: const BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: const Center(
          child: Icon(Icons.check, color: white, size: 16),
        ),
      ),
    ),
    StepperData(
      title: StepperText("Approved"),
      subtitle: StepperText("24 Aug 2023, 11: 00 AM"),
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
