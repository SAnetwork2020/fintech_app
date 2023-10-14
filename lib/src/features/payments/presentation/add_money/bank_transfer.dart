import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_buttons.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../utils/colors.dart';

class AddMoneyScreen extends StatelessWidget {
  const AddMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
        ),
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: const CustomAppBars(title: "Bank Transfer"),
            ),
            const SizedBox(height: 11),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Use the details below to send money to \nyour PAYFLEX account from any bank’s app \nor through internet banking.",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  fontFamily: FontFamily.lato,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bank",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 45,
                    padding: EdgeInsets.only(left: 18, right: 21),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.c000000,
                          blurRadius: 2,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        ),
                      ],
                      border: Border.all(
                        color: AppColors.c1DC1B4,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.cFFFFFF,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.c000000,
                          ),
                          child: Assets.icons.logo.svg(
                              // width: 20,
                              // height: 20,
                              ),
                        ),
                        Text(
                          "Payflex Microfinance Bank",
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            color: AppColors.c000000.withOpacity(.60),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Number",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  CustomTextFormField(
                    // enableInteractiveSelection: false,
                    // readOnly: true,
                    enabled: false,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Copy",
                            style: TextStyle(
                              color: AppColors.c1DC1B4,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                          Assets.icons.copy.svg(width: 20, height: 20),
                        ],
                      ),
                    ),
                    width: 350,
                    fillColor: AppColors.cFFFFFF,
                    hintText: '12345677890',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Name",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  CustomTextFormField(
                    width: 350,
                    fillColor: AppColors.cFFFFFF,
                    hintText: 'e.g Adewunmi Adeolu',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  CustomTextFormField(
                    width: 350,
                    fillColor: AppColors.cFFFFFF,
                    hintText: '00,000.00',
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
              title: "Share",
            ),
            const SizedBox(height: 62),
          ],
        ),
      ),
    );
  }
}
