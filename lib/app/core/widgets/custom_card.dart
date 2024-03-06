import 'package:flutter/material.dart';

import '../assets.dart';
import '../theme.dart';
import 'padding.dart';
import 'sizedbox.dart';
import 'text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isThridLine,
    required this.avatarPicture,
    this.textColor,
    this.backgroundColor,
    this.borderSideColor,
    this.shapeBorder,
    this.thridLineTitle,
    this.thridLineSubtitle,
    required this.suffixIcon,
  });

  final String title;
  final String subtitle;
  final String? thridLineTitle;
  final String? thridLineSubtitle;
  final bool isThridLine;
  final bool avatarPicture;
  final bool suffixIcon;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderSideColor;
  final bool? shapeBorder;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ?? primary,
      shape: shapeBorder == true
          ? RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              side: BorderSide(
                color: borderSideColor ?? primary,
              ),
            )
          : null,
      child: EPadding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            avatarPicture == true
                ? ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(90),
                    ),
                    child: Image.asset(
                      imgProfile,
                      height: 68,
                      width: 68,
                      fit: BoxFit.cover,
                    ),
                  )
                : const SizedBox(),
            avatarPicture == true
                ? const ESizedBox(
                    width: 12,
                  )
                : const SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EText(
                  title,
                  style: EFonts.montserrat(6, 16),
                  color: textColor ?? white,
                ),
                EText(
                  subtitle,
                  style: EFonts.montserrat(5, 12),
                  color: textColor ?? white,
                  height: 2,
                ),
                isThridLine == true
                    ? EText(
                        thridLineTitle ?? "No. Badge | Jabatan",
                        style: EFonts.montserrat(4, 12),
                        color: textColor ?? white,
                        height: 2,
                      )
                    : const SizedBox(),
              ],
            ),
            suffixIcon == true
                ? const EPadding(
                    padding: EdgeInsets.only(left: 45, top: 20),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
