import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    this.title,
    required this.onPressed,
    this.height,
    this.width,
    this.textStyle,
    this.child,
    this.borderRadius,
    this.buttonStyle,
  });
  final BorderRadiusGeometry? borderRadius;
  final String? title;
  final GestureTapCallback onPressed;
  final double? height, width;
  final TextStyle? textStyle;
  final Widget? child;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width ?? 345,
        height: height ?? 60,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(20),
          color: AppColors.cFFFFFF,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
              color: AppColors.c000000.withOpacity(.25),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              AppColors.c3E55D2,
              AppColors.c1DC1B4.withOpacity(1),
            ],
          ),
        ),
        child: ElevatedButton(
          style: buttonStyle ??
              ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(20),
                ),
              ),
          onPressed: onPressed,
          child: child ??
              Text(
                title ?? "Next",
                style: textStyle ??
                    TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.cFFFFFF,
                    ),
              ),
        ),
      ),
    );
  }
}
