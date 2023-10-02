import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';
import '../common_widgets/custom_gradient_button.dart';
import '../routing/router.dart';
import '../utils/colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c000000.withOpacity(.3),
      body: Column(
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
          const SizedBox(height: 116),
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
            "Password Reset Confirmed",
            style: TextStyle(
              color: AppColors.cFFFFFF,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 30),
          CustomGradientButton(
            onPressed: () {
              // context.replace(
              //   const HomeRoute().location,
              // );
            },
            // title: "Login",
            child: Text(
              "Done",
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
