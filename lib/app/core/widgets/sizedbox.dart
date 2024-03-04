import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ESizedBox extends StatelessWidget {
  const ESizedBox(
      {super.key, this.height, this.width, this.radius, this.child});

  final double? height;
  final double? width;
  final double? radius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radius?.r ?? height?.h,
      width: radius?.r ?? width?.w,
      child: child,
    );
  }
}
