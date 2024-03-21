import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../theme.dart';
import 'custom_card_rounded.dart';
import 'padding.dart';
import 'sizedbox.dart';
import 'submit_button.dart';

blockedPinDialog({
  required dynamic Function() onTap,
  String? imageUri,
  String? title,
  String? description,
  String? description2,
  String? labelButton,
  String? labelButton2,
  double? bottomWidth,
  bool dismissible = true,
}) {
  Get.dialog(
    WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        child: CardRounded(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          borderRadius: 5.w,
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                imageUri != null
                    ? Padding(
                        padding: EdgeInsets.only(top: 5.w, bottom: 8.w),
                        child: SizedBox(
                          width: 38.w,
                          height: 38.w,
                          child: CardRounded(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              borderRadius: 100.w,
                              child:
                                  Image.asset(imageUri, fit: BoxFit.contain)),
                        ),
                      )
                    : const SizedBox(),
                EPadding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: ESizedBox(
                    width: double.infinity,
                    child: Text(
                      title ?? '',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                description != null || description != ""
                    ? const ESizedBox(
                        height: 10,
                      )
                    : Container(),
                description != null || description != ""
                    ? Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            description ?? '',
                            style: EFonts.montserrat(5, 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : Container(),
                const ESizedBox(
                  height: 15,
                ),
                description2 != null || description2 != ""
                    ? Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            description2 ?? '',
                            style: EFonts.montserrat(5, 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : Container(),
                const ESizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.w, horizontal: 20.w),
                      child: SizedBox(
                        width: bottomWidth ?? 194.w,
                        child: ESubmitButton(
                          color: primary,
                          onTap: onTap,
                          large: true,
                          action: "Sent",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    barrierDismissible: dismissible,
  );
}

alertDialog({
  required dynamic Function() onTap,
  String? title,
  String? description,
  String? description2,
  String? imageUri,
  String? labelButton,
  double? bottomWidth,
  bool dismissible = true,
}) {
  Get.dialog(
    WillPopScope(
      onWillPop: () async => false,
      child: Dialog(
        child: CardRounded(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          borderRadius: 5.w,
          child: EPadding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                imageUri != null
                    ? EPadding(
                        padding: const EdgeInsets.only(top: 5, bottom: 8),
                        child: ESizedBox(
                          width: 38,
                          height: 38,
                          child: CardRounded(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              borderRadius: 100.w,
                              child:
                                  Image.asset(imageUri, fit: BoxFit.contain)),
                        ),
                      )
                    : const SizedBox(),
                EPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      title ?? '',
                      style: EFonts.montserrat(7, 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                description != null || description != ""
                    ? ESizedBox(height: 10.w)
                    : Container(),
                description != null || description != ""
                    ? EPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            description ?? '',
                            style: EFonts.montserrat(5, 14),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : Container(),
                const ESizedBox(height: 15),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: primary,
                        endIndent: 10,
                      ),
                    ),
                    Text(
                      "OR",
                      style: EFonts.montserrat(6, 14),
                    ),
                    const Expanded(
                      child: Divider(
                        color: primary,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                description2 != null || description2 != ""
                    ? ESizedBox(height: 10.w)
                    : Container(),
                description2 != null || description2 != ""
                    ? EPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            description2 ?? '',
                            style: EFonts.montserrat(5, 14),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : Container(),
                const ESizedBox(height: 15),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.w),
                  child: SizedBox(
                    width: bottomWidth ?? 194.w,
                    child: ESubmitButton(
                      color: primary,
                      onTap: onTap,
                      large: true,
                      action: labelButton ?? "",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    barrierDismissible: dismissible,
  );
}
