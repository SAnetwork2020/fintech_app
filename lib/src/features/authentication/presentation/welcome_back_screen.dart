import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';

class WelcomeBackScreen extends ConsumerStatefulWidget {
  const WelcomeBackScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _WelcomeBackScreenState();
}

class _WelcomeBackScreenState extends ConsumerState<WelcomeBackScreen> {
  final TextEditingController pinController = TextEditingController();

  String enteredNumber = "";

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  void onPinTap(int number) {
    setState(() {
      pinController.text += number.toString();
      enteredNumber = pinController.text;
    });
  }

  void goToHomeScreen() {
    debugPrint("pincontroller completeed!!");
    if (pinController.text.length == 6) {
      // ref.read(goRouterProvider).HomeRoute.go(context);
      // ref.read(goRouterProvider).go($homeRoute);
      const HomeRoute().go(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 89),
            Assets.images.enterPinPfp.image(),
            const SizedBox(height: 20),
            Text(
              "Welcome Back !",
              style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.c000000,
              ),
            ),
            Text(
              "Gregory",
              style: TextStyle(
                fontFamily: FontFamily.lato,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.60,
                color: AppColors.c000000,
              ),
            ),
            const SizedBox(height: 101),
            Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.lock.svg(),
                const SizedBox(width: 5),
                Text(
                  "Enter Your PIN",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.c000000,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                width:290,
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: PinCodeTextField(
                        inputFormatters: [LengthLimitingTextInputFormatter(6),],
                        autoDisposeControllers: false,
                        textStyle: TextStyle(
                          color: AppColors.c1DC1B4,
                        ),
                        controller: pinController,
                        showCursor: true,
                        obscuringCharacter: "*",
                        // obscureText: true,
                        cursorColor: AppColors.c1DC1B4,
                        readOnly: true,
                        appContext: context,
                        length: 6,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.underline,
                          activeColor: AppColors.c1DC1B4,
                          selectedColor: AppColors.c1DC1B4,
                          inactiveColor: AppColors.c000000,
                          fieldWidth: 40,
                        ),
                        onChanged: (value) {
                          enteredNumber = value;
                        },
                        onCompleted: (value) {
                          goToHomeScreen();
                        },
                        onEditingComplete: () {
                          goToHomeScreen();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 2,
                // mainAxisSpacing: 8, crossAxisSpacing: 8,

                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  9,
                  (index) => SizedBox(
                    width: 20,
                    height: 25,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      // onPressed: () => _onNumpadButtonPressed("${index + 1}"),
                      onPressed: () => onPinTap(index + 1),

                      child: Text(
                        "${index + 1}",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: GoogleFonts.inter().fontFamily,
                          fontWeight: FontWeight.w600,
                          color: AppColors.c000000,
                        ),
                      ),
                    ),
                  ),
                )
                  ..add(
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      onPressed: () {},
                      child: Text("Sign Out",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 12,
                              // fontFamily: GoogleFonts.,
                              fontWeight: FontWeight.w600,
                              color: AppColors.c1DC1B4,
                            ),
                          )),
                    ),
                  )
                  ..add(
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      onPressed: () => onPinTap(0),
                      child: Text("0",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: AppColors.c000000,
                            ),
                          )),
                    ),
                  )
                  ..add(
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      onPressed: () {
                        setState(() {
                          if (pinController.text.isNotEmpty) {
                            pinController.text = pinController.text
                                .substring(0, pinController.text.length - 1);
                            enteredNumber = pinController.text;
                          }
                        });
                      },
                      child: Text("Delete",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: 12,
                              // fontFamily: GoogleFonts.,
                              fontWeight: FontWeight.w600,
                              color: AppColors.c1DC1B4,
                            ),
                          )),
                    ),
                  )
                // ..add(
                //   TextButton(
                //     onPressed: () {},
                //     style: TextButton.styleFrom(
                //         shape: const CircleBorder(),
                //         backgroundColor: AppColors.c3E55D2,
                //         fixedSize: const Size(20, 25)),
                //     child: Assets.icons.fingerprintOutline.svg(),
                //   ),
                // ),
                ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
