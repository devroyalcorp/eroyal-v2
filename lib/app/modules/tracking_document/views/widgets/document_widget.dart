import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';

class DocumentWidget extends StatelessWidget {
  const DocumentWidget({
    super.key,
    required this.title,
    required this.noDocument,
    required this.date,
    required this.status,
    required this.textColor,
    required this.statusColor,
    required this.onTap,
  });

  final String title, noDocument, date, status;
  final Color textColor, statusColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return EPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(18.r),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            color: grey.withOpacity(0.2),
            boxShadow: const [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 2),
                color: shadowColor,
              )
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: EFonts.montserrat(6, 14),
                    ),
                    Text(
                      noDocument,
                      style: EFonts.montserrat(4, 12),
                    ),
                    Text(
                      date,
                      style: EFonts.montserrat(4, 10, greyText),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Material(
                    color: statusColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                    child: EPadding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      child: Text(
                        status,
                        style: EFonts.montserrat(4, 10, textColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
