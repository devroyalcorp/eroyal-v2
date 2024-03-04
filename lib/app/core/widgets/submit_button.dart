import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:eroyal/app/core/widgets/svg_picture.dart';
import 'package:eroyal/app/core/widgets/text.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class ESubmitButton extends StatelessWidget {
  const ESubmitButton({
    super.key,
    required this.onTap,
    required this.action,
    this.borderRadius,
    this.padding,
    this.actionStyle,
    this.outlined = false,
    this.enabled = true,
    this.large = false,
    this.prefixIcon,
    this.color,
  });

  final Function() onTap;
  final String action;
  final bool outlined;
  final double? borderRadius;
  final EdgeInsets? padding;
  final TextStyle? actionStyle;
  final bool enabled;
  final bool large;
  final String? prefixIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final Color defaultColor = color ?? primary;

    return Material(
      color: enabled
          ? outlined
              ? white
              : defaultColor
          : grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        side: enabled && outlined
            ? BorderSide(
                width: 1,
                color: defaultColor,
              )
            : BorderSide.none,
      ),
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(borderRadius ?? 12),
        child: Padding(
          padding: padding ??
              EdgeInsets.symmetric(vertical: large ? 12 : 8, horizontal: 12),
          child: Center(
            child: ESizedBox(
              height: 24,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (prefixIcon != null) ...[
                      ESvg(
                        prefixIcon!,
                        radius: 14,
                        color: outlined ? primary : white,
                      ),
                      const ESizedBox(
                        width: 6,
                      ),
                    ],
                    EText(
                      action,
                      color: outlined
                          ? defaultColor
                          : Theme.of(context).scaffoldBackgroundColor,
                      style: actionStyle ??
                          (large
                              ? EFonts.montserrat(7, 16)
                              : const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
