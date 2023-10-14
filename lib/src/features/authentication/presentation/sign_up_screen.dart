import 'package:fintech_app/src/common_widgets/custom_buttons.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPassword = false;
  bool showConfirmPassword = false;
  bool showPin = false;
  bool showConfirmPin = false;
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 160),
                Text(
                  "Welcome Onboard!",
                  style: TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                const SizedBox(height: 22),
                Text(
                  "Step Into The Future of Finance With Us!",
                  style: TextStyle(
                    fontFamily: FontFamily.lato,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.78,
                    color: AppColors.cFFFFFF.withOpacity(.6),
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextFormField(
                  height: 75,
                  hintText: "Enter Your Username",
                  validator: (value) {
                    String error;
                    if (value!.isEmpty) {
                      error = "Please enter a Username";
                      return error;
                    }
                  },
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                ),
                const SizedBox(height: 25),
                CustomTextFormField(
                  hintText: "Phone Number",
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                ),
                const SizedBox(height: 25),
                CustomTextFormField(
                  hintText: "Enter Your mail",
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                ),
                const SizedBox(height: 25),
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return "Please Enter Password";
                  },
                  obscureText: !showPassword,
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
                    if (value!.isEmpty) return "Please Enter Confirm Password";
                  },
                  obscureText: !showConfirmPassword,
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
                    icon: showConfirmPassword
                        ? Assets.icons.eyeOpen.svg()
                        : Assets.icons.eyeClose.svg(),
                    onPressed: () {
                      setState(() {
                        showConfirmPassword = !showConfirmPassword;
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
                    if (value!.isEmpty) return "Enter PIN";
                  },
                  obscureText: !showPin,
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
                    icon: showPin
                        ? Assets.icons.eyeOpen.svg()
                        : Assets.icons.eyeClose.svg(),
                    onPressed: () {
                      setState(() {
                        showPin = !showPin;
                      });
                    },
                  ),
                  hintText: "Enter PIN",
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                ),
                const SizedBox(height: 25),
                CustomTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return "Enter Confirm PIN";
                  },
                  obscureText: !showConfirmPin,
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
                    icon: showConfirmPin
                        ? Assets.icons.eyeOpen.svg()
                        : Assets.icons.eyeClose.svg(),
                    onPressed: () {
                      setState(() {
                        showConfirmPin = !showConfirmPin;
                      });
                    },
                  ),
                  hintText: "Confirm PIN",
                  filled: true,
                  fillColor: AppColors.cFFFFFF,
                ),
                const SizedBox(height: 40),
                Container(
                  width: 325,
                  height: 170,
                  padding: const EdgeInsets.only(top: 10, left: 19, bottom: 10),
                  decoration: BoxDecoration(
                    color: AppColors.c1DC1B4.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Password requirements",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.78,
                          color: AppColors.c1DC1B4,
                        ),
                      ),
                      Text(
                        "Minimum of 8 characters.",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.78,
                          color: AppColors.c1DC1B4,
                        ),
                      ),
                      Text(
                        "Must include 1 Uppercase Letter",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.78,
                          color: AppColors.c1DC1B4,
                        ),
                      ),
                      Text(
                        "Must include 1 Lowercase Letter",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.78,
                          color: AppColors.c1DC1B4,
                        ),
                      ),
                      Text(
                        "Must include 1 Special Character (e.g, !, @, #, \$).",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.78,
                          color: AppColors.c1DC1B4,
                        ),
                      ),
                      Text(
                        "Cannot Contain Your Username or Email",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.78,
                          color: AppColors.c1DC1B4,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "PIN Requirement",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.78,
                          color: AppColors.c1DC1B4,
                        ),
                      ),
                      Text(
                        "Must be a four digit pin",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.78,
                          color: AppColors.c1DC1B4,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                CustomGradientButton(
                  title: "Register",
                  onPressed: () {
                    // context.go(const TermsAndConditionsRoute().location);
                    const TermsAndConditionsRoute().push(context);
                  },
                ),
                const SizedBox(height: 22),
                Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      letterSpacing: 0.84,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.cFFFFFF,
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
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
