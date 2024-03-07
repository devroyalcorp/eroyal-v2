import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets.dart';
import '../theme.dart';
import 'padding.dart';
import 'text.dart';

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 250.h,
          child: SizedBox(
            height: 350.h,
            width: 350.w,
            child: Image.asset(imgNoResultGif),
          ),
        ),
        Positioned(
          top: 300.h,
          left: 0,
          right: 0,
          bottom: 0,
          child: EPadding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                EText(
                  "Sorry! No Result Found :(",
                  style: EFonts.montserrat(6, 20),
                  color: primary,
                  height: 2,
                ),
                EText(
                  "We'are sorry what you were looking for. Please try another keys.",
                  style: EFonts.montserrat(5, 16),
                  color: greyText,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
