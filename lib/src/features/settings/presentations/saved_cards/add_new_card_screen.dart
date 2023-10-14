import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_buttons.dart';
import '../../../../common_widgets/custom_textformfield.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const CustomAppBars(title: "Add New Card"),
          const SizedBox(height: 58),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card Number",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColors.c000000,
                  ),
                ),
                const ShadowTextFormField(
                  hintText: "Please enter your card number",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expiry Date",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.c000000,
                      ),
                    ),
                    Row(
                      children: [
                        ShadowTextFormField(
                          width: 70,
                          hintText: "MM",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.c000000.withOpacity(.5),
                          ),
                        ),
                        const SizedBox(width: 7),
                        const Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Text("/"),
                        ),
                        const SizedBox(width: 7),
                        ShadowTextFormField(
                          width: 70,
                          hintText: "YY",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.c000000.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 29),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CVV",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.c000000,
                      ),
                    ),
                    ShadowTextFormField(
                      width: 154,
                      hintText: "Enter your CVV",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.c000000.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PIN",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: AppColors.c000000,
                  ),
                ),
                const ShadowTextFormField(
                  hintText: "Enter your PIN",
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomGradientButton(
            width: 345,
            height: 47,
            onPressed: () {},
            title: "Confirm",
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.lato,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
