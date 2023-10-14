import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_buttons.dart';
import '../../../common_widgets/pin_widget.dart';
import '../../../utils/colors.dart';

class NewDeviceLoginScreen extends ConsumerStatefulWidget {
  const NewDeviceLoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NewDeviceLoginScreenState();
}

class _NewDeviceLoginScreenState extends ConsumerState<NewDeviceLoginScreen> {
  final TextEditingController pinController = TextEditingController();

  String enteredNumber = "";

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  // void onPinTap(int number) {
  //   setState(() {
  //     pinController.text += number.toString();
  //     enteredNumber = pinController.text;
  //   });
  // }

  // void goToHomeScreen() {
  //   debugPrint("pincontroller completeed!!");
  //   if (pinController.text.length == 6) {
  //     // ref.read(goRouterProvider).HomeRoute.go(context);
  //     // ref.read(goRouterProvider).go($homeRoute);
  //     // const HomeRoute().go(context);
  //   }
  // }

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            const SizedBox(height: 126),
            // const SizedBox(height: 20),
            Text(
              "New Device Login ",
              style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.cFFFFFF,
              ),
            ),
            const SizedBox(height: 25),
            Text(
              """Welcome back!, we notice you attempted to login on \nanother device.""",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FontFamily.lato,
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppColors.cFFFFFF,
              ),
            ),
            const SizedBox(height: 15),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text:
                    """To ensure your accounts security, please enter the\nOTP sent to your registered phone number\n""",
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.cFFFFFF,
                ),
                children: [
                  TextSpan(
                    text: "0905####459",
                    style: TextStyle(
                      color: AppColors.c1DC1B4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width: 290,
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: PinWidget(
                        pinController: pinController,
                        length: 6,
                      ),
                    ),
                  ],
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
            const SizedBox(height: 51),
            CustomGradientButton(
              onPressed: () {
                // context.go(const HomeRoute().location);
              },
              title: "Confirm",
            ),
          ],
        ),
      ),
    );
  }
}

