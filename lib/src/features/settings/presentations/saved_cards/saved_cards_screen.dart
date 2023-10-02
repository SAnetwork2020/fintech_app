import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_gradient_button.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class SavedCardsScreen extends StatelessWidget {
  const SavedCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const CustomAppBars(title: "Saved Cards"),
          const SizedBox(height: 41),
          const Spacer(),
          const Center(
            child: Text(
              "You do not have any saved cards at the moment.",
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
                // const AddNewCardRoute().push(context);
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
    );
  }
}
