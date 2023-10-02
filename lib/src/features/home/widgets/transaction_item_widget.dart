import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';

class TransactionItemWidget extends StatelessWidget {
  const TransactionItemWidget({
    super.key,
    required this.icon,
    required this.type,
    required this.name,
    required this.time,
    required this.price,
  });
  final Widget icon;

  final String name, time, price, type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15.5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Assets.images.jonathanDoe.image(),
                  icon,
                  const SizedBox(width: 15),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        // "Jonathan Doe",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.lato,
                          fontWeight: FontWeight.w500,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        // "15:10 PM",
                        time,
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: FontFamily.lato,
                          fontWeight: FontWeight.w500,
                          color: AppColors.cFFFFFF.withOpacity(.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      height: 10,
                      width: 10,
                      child: type == "plus"
                          ? Assets.icons.plus.svg()
                          : Assets.icons.minus.svg()),
                  const SizedBox(width: 2),
                  SizedBox(
                      height: 10, width: 10, child: Assets.icons.naira.svg()),
                  const SizedBox(width: 2),
                  Text(
                    price,
                    // "3,550",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: FontFamily.lato,
                      fontWeight: FontWeight.w500,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Assets.icons.arrowRight.svg(
                    height: 12,
                    width: 12,
                    colorFilter: ColorFilter.mode(
                      AppColors.cFFFFFF.withOpacity(.6),
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 2,
            // indent: 15,
            // endIndent: 14,
            color: AppColors.cFFFFFF.withOpacity(.6),
          ),
        ],
      ),
    );
  }
}
