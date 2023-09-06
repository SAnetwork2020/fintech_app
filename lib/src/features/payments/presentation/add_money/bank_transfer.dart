import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_gradient_button.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class BankTransferScreen extends StatelessWidget {
  const BankTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const CustomAppBars(title: "Bank Transfer"),
          const SizedBox(height: 11),
          const Padding(
            padding: EdgeInsets.only(left: 14.0),
            child: Text(
              "Use the details below to send money to your Payflex \naccount from any bank’s app or through internet banking.",
              style: TextStyle(
                fontFamily: FontFamily.lato,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bank",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                ShadowTextFormField(
                  hintText: '',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Assets.icons.logo.svg(
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account Number",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                ShadowTextFormField(
                  hintText: '',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Account Name",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                ShadowTextFormField(
                  hintText: '',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amount",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                ShadowTextFormField(
                  hintText: '',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Spacer(),
          CustomGradientButton(
            height: 47,
            width: 345,
            onPressed: () {},
            title: "Save",
          ),
          const SizedBox(height: 62),
        ],
      ),
    );
  }
}
