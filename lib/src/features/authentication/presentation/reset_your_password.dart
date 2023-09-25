import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_gradient_button.dart';
import '../../../common_widgets/custom_textformfield.dart';

import '../../../routing/router.dart';
import '../../../utils/colors.dart';

class ResetYourPasswordScreen extends StatefulWidget {
  const ResetYourPasswordScreen({super.key});

  @override
  State<ResetYourPasswordScreen> createState() =>
      _ResetYourPasswordScreenState();
}

class _ResetYourPasswordScreenState extends State<ResetYourPasswordScreen> {
  final TextEditingController pinController = TextEditingController();

  String enteredNumber = "";
  bool showPassword = false;
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
              Assets.images.resetPassword.image(),
              const SizedBox(height: 30),
              Text(
                "Reset Your Password",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Create a new password for your \naccount below",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.cFFFFFF.withOpacity(.6),
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  fontFamily: FontFamily.lato,
                ),
              ),
              const SizedBox(height: 29.68),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Please Enter Password";
                },
                obscureText: showPassword,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Assets.icons.lockOutline.svg(
                    colorFilter: ColorFilter.mode(
                      AppColors.c000000.withOpacity(.6),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                suffixIcon: IconButton(
                  icon: showPassword
                      ? Assets.icons.eyeOpen.svg()
                      : Assets.icons.eyeClose.svg(),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
                hintText: "Enter Password",
                filled: true,
                fillColor: AppColors.cFFFFFF,
              ),
              const SizedBox(height: 25),
              CustomTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Please Enter Password";
                },
                obscureText: showPassword,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Assets.icons.lockOutline.svg(
                    colorFilter: ColorFilter.mode(
                      AppColors.c000000.withOpacity(.6),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                suffixIcon: IconButton(
                  icon: showPassword
                      ? Assets.icons.eyeOpen.svg()
                      : Assets.icons.eyeClose.svg(),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
                hintText: "Enter Password",
                filled: true,
                fillColor: AppColors.cFFFFFF,
              ),
              const SizedBox(height: 30),
              CustomGradientButton(
                onPressed: () => context.push(const SuccessRoute().location),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.cFFFFFF,
                  ),
                ),
              ),
              const SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
