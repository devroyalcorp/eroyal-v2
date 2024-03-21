import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';
import '../../../../core/widgets/sizedbox.dart';

class DocumentWidget extends StatelessWidget {
  const DocumentWidget({
    super.key,
    required this.title,
    required this.noDocument,
    required this.date,
    required this.status,
    required this.statusColor,
    required this.onTap,
  });

  final String title, noDocument, date, status;
  final Color statusColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return EPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: ListTile(
        onTap: onTap,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: EFonts.montserrat(6, 14, black),
            ),
            Text(
              "No. Document #$noDocument",
              style: EFonts.montserrat(6, 14, black),
            ),
            const ESizedBox(
              height: 5,
            )
          ],
        ),
        subtitle: Text(date),
        trailing: Container(
          width: 82.w,
          height: 25.h,
          decoration: BoxDecoration(
            color: statusColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Center(
            child: Text(
              status,
              style: EFonts.montserrat(6, 14, white),
            ),
          ),
        ),
      ),
    );
  }
}
