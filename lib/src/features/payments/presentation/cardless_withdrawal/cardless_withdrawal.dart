import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_buttons.dart';
import '../../../../common_widgets/custom_textformfield.dart';
import '../../../../utils/colors.dart';

class CardlessWithdrawalScreen extends StatelessWidget {
  CardlessWithdrawalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
          // alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        // backgroundColor: Colors.brown,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: CustomAppBars(title: "Cardless Withdrawal"),
            ),
            const SizedBox(height: 56),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Type in the amount you want to withdraw \nand select a unique cash-out PIN",
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  color: AppColors.cFFFFFF,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    "Amount",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  const CustomTextFormField(
                    contentPadding: EdgeInsets.symmetric(horizontal: 18),
                    width: 350,
                    hintText: '00,000.000',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cash Out Pin",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  const CustomTextFormField(
                    contentPadding: EdgeInsets.symmetric(horizontal: 18),
                    width: 350,
                    hintText: '0000',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 63,
                    height: 63,
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: AppColors.c716F6F,
                      shape: const CircleBorder(),
                    ),
                    child: Assets.icons.cardless.svg(),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "No recent transactions.",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Well show you the transactions you’ve made here",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontFamily: FontFamily.lato,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomGradientButton(
              height: 46.38,
              width: 344.77,
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              onPressed: () {},
              title: "Next",
            ),
            const SizedBox(height: 62),
          ],
        ),
      ),
    );
  }
}
