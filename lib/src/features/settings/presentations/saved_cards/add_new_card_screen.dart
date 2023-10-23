import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:fintech_app/src/common_widgets/success_widget.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_buttons.dart';
import '../../../../common_widgets/custom_textformfield.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

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
            CustomAppBars(title: "Add New Card"),
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
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  const CustomTextFormField(
                    height: 40,
                    width: 345,
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
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                      Row(
                        children: [
                          CustomTextFormField(
                            height: 40,
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
                          CustomTextFormField(
                            height: 40,
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
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                      CustomTextFormField(
                        height: 40,
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
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  const CustomTextFormField(
                    height: 40,
                    width: 345,
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
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => cardTypeNotSupported(context),
                );
              },
              title: "Confirm",
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  //  cardTypeNotSupported(context);
  //  cardTypeNotSupported(context);
  //  cardTypeNotSupported(context);
  CustomErrorWidget cardTypeNotSupported(BuildContext context) {
    return CustomErrorWidget(
      title: "Card type not supported.",
      onPressed: () {
        context.pop();
        context.pop();
      },
    );
  }

  CustomErrorWidget networkErrorWidget(BuildContext context) {
    return CustomErrorWidget(
      title: "Network error",
      onPressed: () {
        context.pop();
        context.pop();
      },
    );
  }
}

CustomErrorWidget serverErrorWidget(BuildContext context) {
  return CustomErrorWidget(
    title: "Server error",
    onPressed: () {
      context.pop();
      context.pop();
    },
  );
}

CustomErrorWidget tryAgainErrorWidget(BuildContext context) {
  return CustomErrorWidget(
    title: "Please try again later",
    onPressed: () {
      context.pop();
      context.pop();
    },
  );
}

CustomErrorWidget cardDeclinedWidget(BuildContext context) {
  return CustomErrorWidget(
    title: "Card Declined",
    onPressed: () {
      context.pop();
      context.pop();
    },
  );
}

CustomErrorWidget cardAlreadySavedWidget(BuildContext context) {
  return CustomErrorWidget(
    title: "Card already saved",
    onPressed: () {
      context.pop();
      context.pop();
    },
  );
}

SuccessWidget cardSavedWidget(BuildContext context) {
  return SuccessWidget(
    title: "Your card has been saved",
    onPressed: () {
      context.pop();
      context.pop();
    },
  );
}
