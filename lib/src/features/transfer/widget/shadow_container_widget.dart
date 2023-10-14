import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    this.fillColor,
    required this.title,
    required this.icon,
    required this.style,
    this.gradient,
  });
  final Color? fillColor;
  final String title;
  final Widget icon;
  final TextStyle style;
  final Gradient? gradient;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: fillColor,
        gradient: gradient,
        // AppColors.cFFFFFF,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 2,
            spreadRadius: 0,
            color: AppColors.c000000.withOpacity(.25),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            const SizedBox(width: 10),
            Text(
              title,
              // "PAYFLEX \nAccount",
              // textAlign: TextAlign.center,
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
