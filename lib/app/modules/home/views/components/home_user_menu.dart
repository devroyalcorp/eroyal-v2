import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/widgets/sizedbox.dart';
import '../../controllers/home_controller.dart';

class HomeUserMenu extends StatelessWidget {
  const HomeUserMenu({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1 / 1.1,
        ),
        itemCount: controller.fiturList.length,
        itemBuilder: (context, index) {
          var i = controller.fiturList[index];
          return InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ESizedBox(
                  height: 45,
                  width: 40,
                  child: SvgPicture.asset(i.svgUrl),
                ),
                const ESizedBox(
                  height: 10,
                ),
                ESizedBox(
                  child: Text(
                    i.name,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
