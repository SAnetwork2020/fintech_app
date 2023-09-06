import 'package:fintech_app/src/common_widgets/custom_gradient_button.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: Assets.images.authBg.provider(),
          alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 160),
              Text(
                "Welcome Onboard!",
                style: TextStyle(
                  fontFamily: FontFamily.poppins,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.c000000.withOpacity(.85),
                ),
              ),
              Text(
                "Let’s help you meet up your tasks.",
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.78,
                  color: AppColors.c000000.withOpacity(.79),
                ),
              ),
              const SizedBox(height: 40),
              const CustomTextFormField(hintText: "Enter You Full Name"),
              const SizedBox(height: 25),
              const CustomTextFormField(hintText: "Enter Your mail"),
              const SizedBox(height: 25),
              const CustomTextFormField(hintText: "Enter Passcode"),
              const SizedBox(height: 25),
              const CustomTextFormField(hintText: "Confirm Passcode"),
              const SizedBox(height: 78),
              CustomGradientButton(
                title: "Register",
                onPressed: () {},
              ),
              const SizedBox(height: 22),
              Text.rich(
                TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                    letterSpacing: 0.84,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.c000000.withOpacity(.79),
                  ),
                  children: [
                    TextSpan(
                      text: "Sign in",
                      style: TextStyle(
                        color: AppColors.c1DC1B4,
                        fontWeight: FontWeight.w700,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => context.go("/")
                        // ..onTap = () => const LoginRoute().go(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
