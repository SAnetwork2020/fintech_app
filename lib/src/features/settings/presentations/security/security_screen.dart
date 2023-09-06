import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_gradient_button.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../utils/colors.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const CustomAppBars(title: "Security"),
          const SizedBox(height: 41),
          SecurityItemWidget(
            icon: Assets.icons.fingerprint.svg(),
            title: "Biometrics",
          ),
          const SizedBox(height: 22),
          SecurityItemWidget(
            icon: Assets.icons.key.svg(),
            title: "Change Transaction Pin",
          ),
          const SizedBox(height: 22),
          SecurityItemWidget(
            icon: Assets.icons.lockOutline.svg(),
            title: "Change Password",
          ),
          const SizedBox(height: 22),
          // const Spacer(),
          // Center(
          //   child: CustomGradientButton(
          //     width: 345,
          //     height: 46.38,
          //     title: "Next",
          //     textStyle:
          //         const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          //     onPressed: () {},
          //   ),
          // ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class SecurityItemWidget extends StatelessWidget {
  const SecurityItemWidget({
    super.key,
    required this.icon,
    required this.title,
  });
  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        width: 357,
        height: 37,
        padding: EdgeInsets.only(right: 12, left: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: AppColors.cCACACA,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.c000000,
                  ),
                )
              ],
            ),
            Assets.icons.arrowRight2.svg(
              width: 5,
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
