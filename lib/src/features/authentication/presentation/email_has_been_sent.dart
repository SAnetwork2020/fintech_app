import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_gradient_button.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../routing/router.dart';
import '../../../utils/colors.dart';

class EmailHasBeenSentScreen extends StatelessWidget {
  const EmailHasBeenSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.welcomeBack.provider(),
          // alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
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
              const SizedBox(height: 116),
              Assets.images.emailSent.image(),
              const SizedBox(height: 30),
              Text(
                "Email Has Been Sent",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                """Please check your inbox and follow the\n instructions to reset your password.""",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.cD9D9D9.withOpacity(.6),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  fontFamily: FontFamily.lato,
                ),
              ),
              const SizedBox(height: 40),

              CustomGradientButton(
                onPressed: () => const LoginRoute().push(context),
                // title: "Login",
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.cFFFFFF,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Didn’t receive an OTP?",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.60,
                  color: AppColors.cFFFFFF.withOpacity(.6),
                ),
              ),
              const SizedBox(height: 21.66),
              TextButton.icon(
                onPressed: () {},
                icon: Assets.icons.retry.svg(),
                label: Text(
                  "Resend",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    // letterSpacing: 0.60,ju
                    color: AppColors.c1DC1B4,
                  ),
                ),
              ),
              // const SizedBox(height: 40),
              //
            ],
          ),
        ),
      ),
    );
  }
}
