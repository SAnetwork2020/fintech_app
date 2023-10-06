import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.icon,
    required this.name, this.onTap,
  });
  // final SvgGenImage icon;
  final dynamic icon;
  final String name;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 90,
        padding: const EdgeInsets.only(left: 9, top: 12, bottom: 6, right: 9),
        margin: const EdgeInsets.symmetric(horizontal: 7.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: AppColors.c000000.withOpacity(.7),
          color: AppColors.c1DC1B4,
          border: Border.all(
            color: AppColors.cFFFFFF,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon.svg(),
            Center(
              child: Text(
                name,
                // "Airtime",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
