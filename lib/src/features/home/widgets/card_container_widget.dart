import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';

class CardContainerWidget extends StatelessWidget {
  const CardContainerWidget({
    super.key,
    required this.title,
    required this.price,
    required this.icon,
    required this.containerColor,
    this.isEmpty,
  });
  final String title, price;
  final Widget icon;
  final Color containerColor;
  final bool? isEmpty;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.c000000.withOpacity(.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 13.0, left: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 30,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: containerColor,
                    ),
                    child: icon),
                Assets.icons.others.svg(
                  colorFilter:
                      ColorFilter.mode(AppColors.c000000, BlendMode.srcIn),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 23.0),
            child: Text(
              // "Commodities",
              title,
              style: TextStyle(
                fontFamily: FontFamily.lato,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.cB0B31,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 23.33),
            child: Row(
              children: [
                isEmpty != null
                    ? const SizedBox()
                    : Assets.icons.naira.svg(
                        colorFilter: ColorFilter.mode(
                          AppColors.c191970,
                          BlendMode.srcIn,
                        ),
                      ),
                Text(
                  // "560k",
                  price,
                  style: TextStyle(
                    fontFamily: FontFamily.lato,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: AppColors.c000000,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}