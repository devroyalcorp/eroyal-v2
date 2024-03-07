import 'package:flutter/material.dart';

import '../assets.dart';
import '../theme.dart';
import 'padding.dart';
import 'text.dart';

class CustomCardProfile extends StatelessWidget {
  const CustomCardProfile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isThridLine,
    required this.isAvatarPicture,
    this.textColor,
    this.backgroundColor,
    this.borderSideColor,
    this.shapeBorder,
    this.thridLineTitle,
    this.thridLineSubtitle,
    required this.suffixIcon,
    this.avatarPicture,
  });

  final String title;
  final String subtitle;
  final String? thridLineTitle;
  final String? thridLineSubtitle;
  final String? avatarPicture;
  final bool isThridLine;
  final bool isAvatarPicture;
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isAvatarPicture == true
                ? Row(
                    children: [
                      EPadding(
                        padding: const EdgeInsets.only(right: 14),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(90),
                          ),
                          child: Image.asset(
                            avatarPicture ?? imgProfile,
                            height: 68,
                            width: 68,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
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
                    ],
                  )
                : Row(
                    children: [
                      EPadding(
                        padding: const EdgeInsets.only(left: 4, right: 14),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                            backgroundColor: primary,
                            child: EText(
                              avatarPicture ?? "",
                              style: EFonts.montserrat(6, 20),
                              color: white,
                            ),
                          ),
                        ),
                      ),
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
                    ],
                  ),
            suffixIcon == true
                ? const EPadding(
                    padding: EdgeInsets.only(top: 22, right: 10),
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
