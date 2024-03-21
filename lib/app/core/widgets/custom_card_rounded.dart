import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardRounded extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? borderRadius;
  final double? width;
  final Color? color;
  final List<BoxShadow>? shadow;

  const CardRounded({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.width,
    this.borderRadius,
    this.color,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(horizontal: 4.w),
      width: width,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: borderRadius != null
            ? BorderRadius.all(
                Radius.circular(borderRadius!),
              )
            : BorderRadius.all(
                Radius.circular(8.w),
              ),
        boxShadow: shadow ??
            [
              BoxShadow(
                color: const Color(0xff333333).withOpacity(.15),
                spreadRadius: 0,
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
      ),
      padding: padding ?? EdgeInsets.all(12.w),
      child: child,
    );
  }
}
