import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

import '../theme.dart';
import 'padding.dart';

class EPop extends StatelessWidget {
  const EPop({
    super.key,
    this.crossAlignment = CrossAxisAlignment.start,
    this.padding,
    required this.children,
  });

  final CrossAxisAlignment crossAlignment;
  final EdgeInsets? padding;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: context.height * .8,
        ),
        child: EPadding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Material(
            color: white,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: EPadding(
              padding: padding ??
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: crossAlignment,
                  children: children,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
