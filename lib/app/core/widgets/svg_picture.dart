import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ESvg extends StatelessWidget {
  const ESvg(
    this.name, {
    super.key,
    this.height,
    this.width,
    this.radius,
    this.color,
    this.fit,
    this.expandWidth = false,
    this.expandHeight = false,
  });

  final String name;
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final BoxFit? fit;
  final bool expandWidth;
  final bool expandHeight;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      name,
      height: expandHeight
          ? context.height
          : radius != null
              ? radius?.r
              : height?.h,
      width: expandWidth
          ? context.width
          : radius != null
              ? radius?.r
              : width?.w,
      fit: fit ?? BoxFit.cover,
      colorFilter: color != null
          ? ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            )
          : null,
    );
  }
}
