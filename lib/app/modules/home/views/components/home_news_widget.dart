import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme.dart';
import '../../../../core/widgets/padding.dart';

class HomeNewsWidget extends StatelessWidget {
  const HomeNewsWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.author,
      required this.onTap,
      required this.date});

  final String image, title, author, date;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    const double imgHeight = 80;
    const double imgWidth = 130;

    return EPadding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 110.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6.r),
            ),
            color: white.withOpacity(0.8),
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 2),
                color: greyHint,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Image.asset(
                  image,
                  height: imgHeight,
                  width: imgWidth,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const ESizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EPadding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: EText(
                        title,
                        style: EFonts.montserrat(7, 14),
                        maxLines: 2,
                      ),
                    ),
                    const ESizedBox(
                      height: 4,
                    ),
                    EText(
                      author,
                      maxLines: 2,
                      style: EFonts.montserrat(6, 12, greyText),
                    ),
                    const ESizedBox(
                      height: 2,
                    ),
                    EText(
                      date,
                      maxLines: 1,
                      style: EFonts.montserrat(6, 12, greyText),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
