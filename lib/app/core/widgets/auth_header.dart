// ignore_for_file: unused_field

import 'package:eroyal/app/core/assets.dart';
import 'package:eroyal/app/core/widgets/image_picture.dart';
import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

import 'animated_toogle.dart';

class AuthHeader extends StatefulWidget {
  const AuthHeader({super.key});

  @override
  State<AuthHeader> createState() => _AuthHeaderState();
}

class _AuthHeaderState extends State<AuthHeader> {
  int _toggleValue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedToggle(
          values: const ['Internal', 'External'],
          onToggleCallback: (value) {
            setState(() {
              _toggleValue = value;
            });
          },
        ),
        _toggleValue == 0
            ? const Text('baseUrl : http://example.internal.co.id')
            : const Text('baseUrl : http://api.ras.co.id/'),
        const ESizedBox(
          height: 20,
        ),
        const EImages(
          name: imgLogo,
          width: 150,
        ),
        const ESizedBox(
          height: 55,
        )
      ],
    );
  }
}
