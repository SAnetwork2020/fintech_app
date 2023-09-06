import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';

class YourCardsWidget extends StatelessWidget {
  const YourCardsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 328,
        height: 152,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: AppColors.cFFFFFF,
          image: DecorationImage(
            fit: BoxFit.none,
            image: Assets.images.cardBg.provider(),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.c000000.withOpacity(.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
          gradient: LinearGradient(
            begin: const Alignment(0.00, -1.00),
            end: const Alignment(0, 1),
            colors: [
              AppColors.c1DC1B4.withOpacity(.63),
              AppColors.c3E55D2.withOpacity(.63),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 9, top: 10, right: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "NEOBANK",
                    style: TextStyle(
                      // fontFamily: FontFamily.lato,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  Transform.rotate(
                      angle: math.pi / 2, child: Assets.icons.others.svg()),
                ],
              ),
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Assets.icons.naira.svg(),
                      Text(
                        "522,200.00",
                        style: TextStyle(
                          // fontFamily: FontFamily.lato,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "****6770",
                        style: TextStyle(
                          // fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Assets.icons.cardDesign.svg(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "04 / 25",
                    style: TextStyle(
                      // fontFamily: FontFamily.lato,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  Assets.icons.visaLogo.svg(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}