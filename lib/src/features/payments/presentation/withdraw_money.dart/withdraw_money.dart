import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_gradient_button.dart';
import '../../../../common_widgets/custom_textformfield.dart';
import '../../../../utils/colors.dart';

class CardlessWithdrawalScreen extends StatelessWidget {
  const CardlessWithdrawalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          const CustomAppBars(title: "Cardless Withdrawal"),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 22.0),
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
          const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cash Out Pin",
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
          const SizedBox(height: 150),
          Container(
            width: 63,
            height: 63,
            padding: EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: AppColors.c716F6F,
              shape: CircleBorder(),
            ),
            child: Assets.icons.cardless.svg(),
          ),
          SizedBox(height: 30),
          Text(
            "No recent transactions.",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Well show you the transactions you’ve made here",
            style: TextStyle(
              fontFamily: FontFamily.lato,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
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
