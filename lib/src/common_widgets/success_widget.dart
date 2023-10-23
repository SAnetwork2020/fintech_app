import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
import 'custom_buttons.dart';
import '../utils/colors.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget(
      {super.key,
      required this.title,
      this.desc,
      this.buttonText,
      required this.onPressed,
      this.titleStyle,
      this.descStyle});
  final String title;
  final TextStyle? titleStyle, descStyle;
  final String? buttonText, desc;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 47),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Assets.icons.backArrow.svg(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 181.09),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.cFFFFFF,
            ),
            child: Assets.icons.checkMark.svg(
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(height: 90),
          Text(
            title,
            style: titleStyle ??
                TextStyle(
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            desc ?? "",
            textAlign: TextAlign.center,
            style: descStyle ??
                TextStyle(
                  fontFamily: FontFamily.lato,
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
          ),
          const SizedBox(height: 30),
          CustomGradientButton(
            height: 47,
            width: 345,
            onPressed: onPressed,
            child: Text(
              buttonText ?? "Done",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.cFFFFFF,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
      {super.key,
      required this.title,
      this.desc,
      this.buttonText,
      required this.onPressed,
      this.titleStyle,
      this.descStyle});
  final String title;
  final TextStyle? titleStyle, descStyle;
  final String? buttonText, desc;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 47),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Assets.icons.backArrow.svg(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 181.09),
          Text(
            "!",
            style: TextStyle(
              color: AppColors.cFF0000,
              fontWeight: FontWeight.w500,
              fontSize: 80,
            ),
          ),
          const SizedBox(height: 90),
          Text(
            title,
            style: titleStyle ??
                TextStyle(
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            desc ?? "",
            textAlign: TextAlign.center,
            style: descStyle ??
                TextStyle(
                  fontFamily: FontFamily.lato,
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
          ),
          const SizedBox(height: 30),
          CustomGradientButton(
            height: 47,
            width: 345,
            onPressed: onPressed,
            child: Text(
              buttonText ?? "Done",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.cFFFFFF,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
