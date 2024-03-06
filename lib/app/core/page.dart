// ignore_for_file: deprecated_member_use

import 'package:eroyal/app/core/helper.dart';
import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/widgets/svg_picture.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'assets.dart';
import 'widgets/bottom_sheet.dart';
import 'widgets/sizedbox.dart';

class EPage extends StatelessWidget {
  const EPage({
    super.key,
    required this.title,
    this.titleIcon,
    this.onWillPop,
    this.backBtn = false,
    this.padding,
    this.children,
    this.child,
    this.loading,
    this.defaultActions,
    this.leadingImg,
    this.actions,
    this.bottomSheet,
    this.crossAxisAlignment,
    this.customAppBarColor,
    this.customAppBarTitleColor,
  });

  final String title;
  final Widget? titleIcon;
  final Future<bool> Function()? onWillPop;
  final bool backBtn;
  final EdgeInsets? padding;
  final List<Widget>? children;
  final Widget? child;
  final bool? loading;
  final bool? defaultActions;
  final String? leadingImg;
  final List<Widget>? actions;
  final Widget? bottomSheet;
  final CrossAxisAlignment? crossAxisAlignment;
  final Color? customAppBarColor;
  final Color? customAppBarTitleColor;

  @override
  Widget build(BuildContext context) {
    final crossAxis = crossAxisAlignment ?? CrossAxisAlignment.stretch;
    final defaultPadding = padding != null
        ? padding!.copyWith(
            top: padding!.top.h,
            bottom: padding!.bottom.h,
            left: padding!.left.h,
            right: padding!.right.h,
          )
        : EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 30.h,
          );

    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: kToolbarHeight.h * 1.75,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
                  decoration: BoxDecoration(
                    color: customAppBarColor ?? white,
                    boxShadow: const [
                      shadowSmooth,
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: onWillPop ?? Get.back,
                        child: Row(
                          children: [
                            if (onWillPop != null || backBtn) ...[
                              const ESizedBox(
                                height: 34,
                                child: Center(
                                  child: ESvg(
                                    icBackButton,
                                    radius: 20,
                                  ),
                                ),
                              ),
                              const ESizedBox(width: 15),
                            ],
                          ],
                        ),
                      ),
                      if (isNotEmpty(leadingImg)) ...[
                        CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage(leadingImg!),
                        ),
                        const ESizedBox(
                          width: 10,
                        )
                      ],
                      ESizedBox(
                        height: 34,
                        child: Center(
                          child: EText(
                            title,
                            style: EFonts.montserrat(6, 18),
                            color: customAppBarTitleColor ?? black,
                          ),
                        ),
                      ),
                      if (titleIcon != null) ...[
                        const ESizedBox(width: 4),
                        ESizedBox(
                          height: 34,
                          child: Center(
                            child: titleIcon,
                          ),
                        ),
                      ],
                      if (isNotEmpty(actions)) ...[const Spacer(), ...actions!],
                    ],
                  ),
                ),
                Expanded(
                  child: child != null
                      ? child!
                      : SingleChildScrollView(
                          padding: defaultPadding,
                          child: Column(
                            crossAxisAlignment: crossAxis,
                            children: children ?? [],
                          ),
                        ),
                )
              ],
            ),
            if (bottomSheet != null) EBottomSheet(child: bottomSheet!),
          ],
        ),
      ),
    );
  }
}
