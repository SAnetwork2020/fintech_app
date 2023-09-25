import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_gradient_button.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class ResetPasswordConfirmationScreen extends StatelessWidget {
  const ResetPasswordConfirmationScreen({super.key});

  // bool showPassword = false;
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
              Assets.images.forgotPassword.image(),
              const SizedBox(height: 30),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                """Enter the email address used when you first \njoined us and we’ll send you instructions to \nreset your password.""",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.cD9D9D9.withOpacity(.6),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  fontFamily: FontFamily.lato,
                ),
              ),
              const SizedBox(height: 40),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Email does not match";
                },
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Assets.icons.eMail.svg(),
                ),
                hintText: "Enter Your mail",
                filled: true,
                fillColor: AppColors.cFFFFFF,
              ),
              const SizedBox(height: 30),

              Text(
                "Use Phone Number Instead",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  color: AppColors.c1DC1B4,
                ),
              ),
              const SizedBox(height: 20),
              CustomGradientButton(
                onPressed: () => const EmailHasBeenSentRoute().push(context),
                // title: "Login",
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.cFFFFFF,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              //
            ],
          ),
        ),
      ),
    );
  }
}
