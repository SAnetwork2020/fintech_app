import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../routing/router.dart';
import '../../../../utils/colors.dart';
import 'widget/credit_card_widget.dart';

class SelectAddNewCardsScreen extends StatelessWidget {
  const SelectAddNewCardsScreen({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const CustomAppBars(title: "Saved Cards"),
            ),
            const SizedBox(height: 21),
            // const Spacer(),
            CreditCardWidget(
              cardName: "Credit Card",
              borderColor: AppColors.c1DC1B4,
              cardImage: Assets.icons.visaLogo.svg(),
            ),

            SizedBox(height: 30),
            CreditCardWidget(
              cardName: "Debit Card",
              fillColor: AppColors.c050017,
              cardImage: Assets.icons.mastercard.svg(),
              borderColor: AppColors.c050017,
            ),
            SizedBox(height: 30),
            CreditCardWidget(
              borderColor: AppColors.c1DC1B4,
              hieght: 100,
              customWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 18, right: 19.44),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Connected account",
                          style: TextStyle(
                            color: AppColors.cFFFFFF,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(child: Assets.icons.paypal.svg()),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Greg*******5@gmail.com",
                      style: TextStyle(
                        fontFamily: FontFamily.lato,
                        color: AppColors.cFFFFFF,
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: CustomGradientButton(
                width: 345,
                height: 47,
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                onPressed: () {
                  const AddNewCardRoute().push(context);
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.add.svg(),
                    const SizedBox(width: 84),
                    const Text(
                      "Add New Card",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.lato,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
