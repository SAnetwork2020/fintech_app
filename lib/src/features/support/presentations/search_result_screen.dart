import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

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
            const SizedBox(height: 47),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: Assets.icons.backArrow.svg(),
                  ),
                  const Spacer(),
                  Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: "FAQs\n",
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontSize: 17,
                        height: 0,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "Frequently Asked Questions",
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            color: AppColors.cFFFFFF,
                            fontSize: 12,
                            height: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 22.09),
            Center(
              child: Column(
                children: [
                  CustomTextFormField(
                    width: 295,
                    height: 35,
                    filled: true,
                    fillColor: AppColors.cFFFFFF,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Assets.icons.search.svg(),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          // onTap: () =>
                          //     const SearchResulNotFoundRoute().push(context),
                          child: Assets.icons.close.svg()),
                    ),
                    inputBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.c000000.withOpacity(.20),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Password Reset Guide",
                    style: TextStyle(
                      // fontFamily: FontFamily.lato,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            // CustomTextF

            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "To reset your password, follow these steps:",
                    style: TextStyle(
                      // fontFamily: FontFamily.lato,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  const SizedBox(height: 9),
                ],
              ),
            ),
            // const EdgeInsets.symmetric(horizontal: 31.0, vertical: 5),
            ...List.generate(
              searchResult.length,
              (index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 31.0, vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${(index + 1)}. ",
                      // """Remember to keep your password secure and do \nnot share it with anyone.""",
                      style: TextStyle(
                        fontFamily: FontFamily.lato,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppColors.cFFFFFF,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: 305,
                      child: Text(
                        "${searchResult[index]}",
                        // """Remember to keep your password secure and do \nnot share it with anyone.""",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31.0),
              child: Text(
                """If you encounter any issues during this process, please contact our customer support team at [Support Email] or call [Support Phone Number].""",
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31.0),
              child: Text(
                """Remember to keep your password secure and do \nnot share it with anyone.""",
                style: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List searchResult = [
  "Open our PAYFLEX application.",
  "Click on the “forgot password” link on the login page.",
  "Enter your registered email address associated with your account.",
  "Check your email for a password reset link. If you don’t see it in your inbox, please check your spam folder.",
  "Click on the password reset link in the email. You’ll be directed to a page where you can create a new password.",
  "Choose a strong and secure password, following our password policy guidelines.",
  "Confirm your new password.",
  "You’ll receive a confirmation email once your password has been successfully changed. ",
];
