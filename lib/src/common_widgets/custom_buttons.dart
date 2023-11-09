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
    this.gradient,
  });
  final BorderRadiusGeometry? borderRadius;
  final String? title;
  final void Function()? onPressed;
  final double? height, width;
  final TextStyle? textStyle;
  final Widget? child;
  final ButtonStyle? buttonStyle;
  final Gradient? gradient;

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
          gradient: gradient ??
              LinearGradient(
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

class CustomWhiteButton extends StatelessWidget {
  const CustomWhiteButton({
    super.key,
    this.height,
    this.width,
    this.title,
    this.radius,
    this.style,
    this.onPressed,
  });
  final double? height, width, radius;
  final String? title;
  final TextStyle? style;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 344.77,
      height: height ?? 46.38,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              radius ?? 20,
            ),
          ),
          backgroundColor: AppColors.cFFFFFF,
          foregroundColor: AppColors.c000000,
        ),
        child: Text(
          title ?? "Share",
          style: style ??
              TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.c000000,
              ),
        ),
      ),
    );
  }
}
