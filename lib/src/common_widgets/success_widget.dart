import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
import '../common_widgets/custom_gradient_button.dart';
import '../utils/colors.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget(
      {super.key,
      required this.title,
      this.desc,
      this.buttonText,
      required this.onPressed});
  final String title;
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
            style: TextStyle(
              color: AppColors.cFFFFFF,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            desc ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(
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
