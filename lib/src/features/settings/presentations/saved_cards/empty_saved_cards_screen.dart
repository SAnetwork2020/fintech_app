import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_buttons.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../utils/colors.dart';

class EmptySavedCardsScreen extends StatelessWidget {
  const EmptySavedCardsScreen({super.key});

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
            const SizedBox(height: 41),
            const Spacer(),
            Center(
              child: Column(
                children: [
                  Assets.images.noCreditCard.image(),
                  SizedBox(height: 20),
                  Text(
                    "You do not have any saved cards at the moment.",
                    style: TextStyle(
                      color: AppColors.cFFFFFF.withOpacity(.6),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
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
                  // const SelectAddNewCardsRoute().push(context);
                  context.push(SelectAddNewCardsRoute().location);
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
