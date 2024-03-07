import 'package:eroyal/app/core/assets.dart';
import 'package:eroyal/app/core/widgets/image_picture.dart';
import 'package:eroyal/app/core/widgets/sizedbox.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EImages(
          name: imgLogo,
          width: 150,
        ),
        ESizedBox(
          height: 55,
        )
      ],
    );
  }
}
