import 'package:eroyal/app/modules/tracking_document/views/tracking_document_detail_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/assets.dart';
import '../../../core/page.dart';
import '../../../core/theme.dart';
import '../../../core/widgets/no_result_widget.dart';
import '../../../core/widgets/search_field.dart';
import '../../../core/widgets/sizedbox.dart';
import '../../../core/widgets/submit_button.dart';
import '../controllers/tracking_document_controller.dart';
import 'widgets/document_widget.dart';

class TrackingDocumentView extends GetView<TrackingDocumentController> {
  const TrackingDocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return EPage(
      backBtn: true,
      title: "Tracking Document",
      customAppBarTitleColor: white,
      customAppBarColor: primary,
      padding: const EdgeInsets.all(0),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ESubmitButton(
            prefixIcon: icEdit,
            prefixRadius: 24,
            onTap: () {},
            action: "Create Document",
          )
        ],
      ),
      children: [
        ESearchField(
          controller: controller.searchD,
          onChanged: controller.onChanged,
        ),
        ESizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Obx(
            () => controller.filteredDocument.isNotEmpty
                ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    itemCount: controller.filteredDocument.length,
                    itemBuilder: (_, index) {
                      final data = controller.filteredDocument[index];
                      return DocumentWidget(
                        title: data.title,
                        noDocument: "Document No: ${data.noDocument}",
                        date: data.date,
                        status: data.status,
                        textColor: data.textColor,
                        statusColor: data.statusColor,
                        onTap: () => Get.to(
                          () => const TrackingDocumentDetail(),
                        ),
                      );
                    },
                  )
                : const NoResultWidget(),
          ),
        ),
      ],
    );
  }
}
