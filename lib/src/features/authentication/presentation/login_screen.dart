import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_gradient_button.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        body: Column(
          children: [
            const SizedBox(height: 160),
            Text(
              "Welcome Back !",
              style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.c000000.withOpacity(.85),
              ),
            ),
            const SizedBox(height: 40),
            Center(child: Assets.images.loginView.image()),
            const SizedBox(height: 40),
            const CustomTextFormField(hintText: "Enter your username"),
            const SizedBox(height: 30),
            const CustomTextFormField(hintText: "Enter your passcode"),
            const SizedBox(height: 37),
            Text(
              "Forgot password",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.c1DC1B4,
              ),
            ),
            const SizedBox(height: 29),
            CustomGradientButton(
              onPressed: () => const WelcomeBackRoute().go(context),
              title: "Login",
            ),
            const SizedBox(height: 22),
            Text.rich(
              TextSpan(
                text: "Dont have an account? ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.c000000.withOpacity(.79),
                ),
                children: [
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      color: AppColors.c1DC1B4,
                      fontWeight: FontWeight.w700,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.go("/sign_up"),
                      // ..onTap = () => const SignUpRoute().go(context),
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

