import 'package:flutter/material.dart';

import '../../../../../../gen/fonts.gen.dart';
import '../../../../../utils/colors.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    super.key,
    this.cardName,
    required this.borderColor,
    this.fillColor,
    this.cardImage,
    this.width,
    this.hieght,
    this.customWidget,
  });
  final String? cardName;
  final Color? fillColor;
  final Color borderColor;
  final Widget? cardImage, customWidget;
  final double? width, hieght;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width ?? 320,
        height: hieght ?? 180,
        // padding: EdgeInsets.only(left: 25, top: 24, right: 24.31),
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: customWidget ??
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 24, right: 24.31),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cardName ?? "",
                        style: TextStyle(
                          color: AppColors.cFFFFFF,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(child: cardImage),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        3,
                        (index) => Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            4,
                            (index) => Container(
                              margin: EdgeInsets.all(1.7),
                              width: 6.6,
                              height: 6.6,
                              decoration: ShapeDecoration(
                                shape: CircleBorder(),
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "4567",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          color: AppColors.cFFFFFF,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 44, right: 46.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CARDHOLDER NAME",
                        style: TextStyle(
                          color: AppColors.cFFFFFF,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "EXPIRY DATE",
                        style: TextStyle(
                          color: AppColors.cFFFFFF,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 44, right: 43.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gregory Stones",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          color: AppColors.cFFFFFF,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "05/2024",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          color: AppColors.cFFFFFF,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
