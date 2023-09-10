// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fintech_app/src/routing/router.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../common_widgets/custom_gradient_button.dart';

class ExistingAccountScreen extends StatelessWidget {
  const ExistingAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.onboardingBg.provider(),
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.c050017.withOpacity(.3),
        // backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 19.0),
              child: Row(
                children: [
                  Assets.icons.logo.svg(
                    colorFilter: ColorFilter.mode(
                      AppColors.cFFFFFF,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "PAYFLEX",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: AppColors.cFFFFFF,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 57),
            Assets.images.onboardingPix4.image(),

            const SizedBox(height: 106.99),
            Expanded(
              child: Container(
                // width: double.maxFinite,
                // height: 300,
                padding: const EdgeInsets.only(left: 25.0),
                color: AppColors.c050017,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // const SizedBox(height: 67),

                      const SizedBox(height: 30),
                      Text(
                        """Already have an account with PAYFLEX?""",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        """Unlock your saving potential with us. Our platform makes it effortless to set money aside, helping you achieve your financial goals faster and smarter.""",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Expanded(child: SizedBox()),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 325.5,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  context.pushReplacement(
                                      const LoginRoute().location);
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                  backgroundColor: AppColors.cFFFFFF,
                                ),
                                child: Text(
                                  "Yes, I already have an account",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.c000000,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            CustomGradientButton(
                              title: "No, Let’s get started",
                              borderRadius: BorderRadius.circular(10),
                              width: 325.5,
                              height: 50,
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              onPressed: () {
                                context.pushReplacement(
                                    const SignUpRoute().location);
                              },
                            ),
                          ],
                        ),
                      ),
                      // const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            )
            // Assets.images.onboardingPix.image(),
          ],
        ),
      ),
    );
  }
}
