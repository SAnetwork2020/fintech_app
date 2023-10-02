import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';

class QuickLinksWidget extends StatelessWidget {
  const QuickLinksWidget({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final SvgGenImage icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.c1DC1B4,
        border: Border.all(
          color: AppColors.cFFFFFF,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 9, top: 11.0),
            child: icon.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Center(
              child: Text(
                "Add Money",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}