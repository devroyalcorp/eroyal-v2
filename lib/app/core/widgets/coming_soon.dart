import 'package:eroyal/app/core/theme.dart';
import 'package:eroyal/app/core/widgets/padding.dart';
import 'package:flutter/material.dart';

import '../assets.dart';
import 'sizedbox.dart';
import 'text.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ESizedBox(
              height: 280,
              width: 280,
              child: Image.asset(imgAssets),
            ),
            EText(
              "Great things Coming Soon.",
              style: EFonts.montserrat(6, 24),
              height: 2,
            ),
            const EPadding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: EText(
                "We're working hard to bring you something amazing. Stay tuned.",
                style: TextStyle(fontSize: 16),
                height: 1,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
