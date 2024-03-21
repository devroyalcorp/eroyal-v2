import 'package:flutter/material.dart';

import '../../../core/page.dart';
import '../../../core/theme.dart';

class TrackingDocumentDetail extends StatelessWidget {
  const TrackingDocumentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const EPage(
      backBtn: true,
      title: "Tracking Document Detail",
      customAppBarTitleColor: white,
      customAppBarColor: primary,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        HeaderDocument(),
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
          style: EFonts.montserrat(7, 18),
        ),
        Text(
          "No. Dokumen: 192",
          style: EFonts.montserrat(6, 16),
        ),
        Text(
          "2024-01-30",
          style: EFonts.montserrat(5, 14),
        ),
      ],
    );
  }
}
