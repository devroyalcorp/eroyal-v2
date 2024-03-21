import 'package:eroyal/app/modules/tracking_document/views/tracking_document_detail_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/page.dart';
import '../../../core/theme.dart';
import '../../../core/widgets/no_result_widget.dart';
import '../../../core/widgets/search_field.dart';
import '../../../core/widgets/sizedbox.dart';
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
      children: [
        ESearchField(
          controller: controller.searchD,
          onChanged: controller.onChanged,
        ),
        ESizedBox(
          height: 650,
          child: Obx(
            () => controller.filteredDocument.isNotEmpty
                ? ListView.separated(
                    separatorBuilder: (_, __) {
                      return const Divider();
                    },
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: controller.filteredDocument.length,
                    itemBuilder: (_, index) {
                      final data = controller.filteredDocument[index];
                      return DocumentWidget(
                        title: data.title,
                        noDocument: data.noDocument,
                        date: data.date,
                        status: data.status,
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
