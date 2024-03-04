import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EText extends StatelessWidget {
  const EText(
    this.data, {
    super.key,
    this.style,
    this.fontStyle,
    this.color,
    this.textAlign,
    this.maxLines,
    this.height,
    this.decoration,
  });

  final String data;
  final TextStyle? style;
  final FontStyle? fontStyle;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? height;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: style != null
          ? style?.copyWith(
              fontSize: style?.fontSize?.sp,
              color: color ?? style?.color,
              fontStyle: fontStyle,
              height: height,
              decoration: decoration,
            )
          : TextStyle(
              color: color,
              height: height,
              decoration: decoration,
              fontStyle: fontStyle,
            ),
    );
  }
}
