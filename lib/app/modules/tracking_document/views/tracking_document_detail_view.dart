import 'package:another_stepper/another_stepper.dart';
import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:eroyal/app/modules/tracking_document/controllers/tracking_document_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/assets.dart';
import '../../../core/page.dart';
import '../../../core/theme.dart';
import '../../../core/widgets/submit_button.dart';

class TrackingDocumentDetail extends GetView<TrackingDocumentController> {
  const TrackingDocumentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return EPage(
      backBtn: true,
      title: "Tracking Document Detail",
      customAppBarTitleColor: white,
      customAppBarColor: primary,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        const HeaderDocument(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESizedBox(
              height: 24,
            ),
            Text(
              "Document Status",
              style: EFonts.montserrat(6, 14),
            ),
            AnotherStepper(
              scrollPhysics: const NeverScrollableScrollPhysics(),
              stepperList: controller.stepperData,
              stepperDirection: Axis.vertical,
              activeBarColor: primary,
              inverted: false,
              activeIndex: 1,
              verticalGap: 30,
            ),
          ],
        ),
      ],
    );
  }
}

class HeaderDocument extends StatelessWidget {
  const HeaderDocument({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price Agreement New Product",
          style: EFonts.montserrat(6, 18),
        ),
        Text(
          "No. Dokumen: 192",
          style: EFonts.montserrat(4, 14),
        ),
        Text(
          "2024-01-30",
          style: EFonts.montserrat(4, 12, greyText),
        ),
      ],
    );
  }
}
