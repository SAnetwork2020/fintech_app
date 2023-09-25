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

class VerifyYourEmailScreen extends StatefulWidget {
  const VerifyYourEmailScreen({super.key});

  @override
  State<VerifyYourEmailScreen> createState() => _VerifyYourEmailScreenState();
}

class _VerifyYourEmailScreenState extends State<VerifyYourEmailScreen> {
  final TextEditingController pinController = TextEditingController();

  String enteredNumber = "";

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
              Assets.images.verifyEmail.image(),
              const SizedBox(height: 30),
              Text(
                "Verify Your Email",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              Text.rich(
                TextSpan(
                  text: """Please enter the 6 digit code sent to \n""",
                  style: TextStyle(
                    color: AppColors.cFFFFFF,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    fontFamily: FontFamily.lato,
                  ),
                  children: [
                    TextSpan(
                      text: "george.smith@gmail.com",
                      style: TextStyle(
                        color: AppColors.c1DC1B4,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              // const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: 290,
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: PinCodeTextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(6),
                          ],
                          autoDisposeControllers: false,
                          textStyle: TextStyle(
                            color: AppColors.c1DC1B4,
                          ),
                          controller: pinController,
                          showCursor: true,
                          obscuringCharacter: "*",
                          // obscureText: true,
                          cursorColor: AppColors.c1DC1B4,
                          // readOnly: true,
                          appContext: context,
                          length: 6,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.underline,
                            activeColor: AppColors.c1DC1B4,
                            selectedColor: AppColors.c1DC1B4,
                            inactiveColor: AppColors.cFFFFFF.withOpacity(.6),
                            fieldWidth: 40,
                          ),
                          onChanged: (value) {
                            enteredNumber = value;
                          },
                          onCompleted: (value) {
                            // goToHomeScreen();
                          },
                          onEditingComplete: () {
                            // goToHomeScreen();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
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
              const SizedBox(height: 30),
              CustomGradientButton(
                onPressed: () => const ResetYourPasswordRoute().push(context),
                // title: "Login",
                child: Text(
                  "Verify Now",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.cFFFFFF,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Back to Login",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  color: AppColors.c1DC1B4,
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
