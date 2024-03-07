import 'package:flutter/material.dart';

import '../assets.dart';
import '../theme.dart';
import 'formfield.dart';
import 'padding.dart';
import 'sizedbox.dart';
import 'svg_picture.dart';

class ESearchField extends StatelessWidget {
  const ESearchField({
    super.key,
    required this.controller,
    required this.onChanged,
    this.hintText = 'Search',
    this.focusedColor = primary,
    this.borderColor = grey,
  });

  final TextEditingController controller;
  final Function(String) onChanged;
  final String hintText;
  final Color focusedColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return EPadding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 20, bottom: 8),
      child: ESizedBox(
        height: 50,
        child: EFormField(
          controller: controller,
          autoFocus: false,
          onChanged: onChanged,
          hintText: hintText,
          focusedColor: primary,
          borderColor: grey,
          prefixIcon: const EPadding(
            padding: EdgeInsets.all(10),
            child: ESvg(
              icSearch,
              fit: BoxFit.contain,
              color: greyIcon,
            ),
          ),
        ),
      ),
    );
  }
}
