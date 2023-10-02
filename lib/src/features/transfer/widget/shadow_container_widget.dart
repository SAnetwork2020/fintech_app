import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    required this.fillColor,
    required this.title,
    required this.icon,
    required this.style,
  });
  final Color fillColor;
  final String title;
  final Widget icon;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: fillColor,
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
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.94),
            child: icon,
          ),
          const SizedBox(width: 14.94),
          Text(
            title,
            // "PAYFLEX \nAccount",
            textAlign: TextAlign.center,
            style: style,
          ),
        ],
      ),
    );
  }
}
