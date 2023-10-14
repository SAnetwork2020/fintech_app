import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';
import '../common_widgets/custom_buttons.dart';
import '../utils/colors.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key, required this.msg, required this.location, this.buttonText});
  final String msg, location;
  final String? buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
          // alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        // backgroundColor: AppColors.c000000.withOpacity(.3),
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
              // "Password Reset Confirmed",
              msg,
              style: TextStyle(
                color: AppColors.cFFFFFF,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            CustomGradientButton(
              height: 47, width: 345,
              onPressed: () {
                context.go(
                  location,
                );
                // const HomeRoute().location,
              },
              // title: "Login",
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
      ),
    );
  }
}
