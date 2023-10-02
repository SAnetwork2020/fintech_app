import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_gradient_button.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

import '../../transfer/presentations/transfer_other_bank_screen.dart';

class BankStatementScreen extends StatelessWidget {
  const BankStatementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const CustomAppBars(title: "Account Statement"),
          const SizedBox(height: 41),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Start Date",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                ShadowTextFormField(hintText: ""),
                SizedBox(height: 40),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "End Date",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                ShadowTextFormField(hintText: ""),
                SizedBox(height: 40),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Send to",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    ShadowTextFormField(width: 154, hintText: ""),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose Format",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    ShadowTextFormField(width: 154, hintText: ""),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: CustomGradientButton(
              width: 345,
              height: 46.38,
              title: "Next",
              textStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
