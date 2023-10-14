import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class SearchResulFoundScreen extends StatelessWidget {
  const SearchResulFoundScreen({super.key});

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
                  Spacer(),
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
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 22.09),
            Center(
              child: CustomTextFormField(
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
            ),
            // CustomTextF
            SizedBox(height: 47.59),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: faqs.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 34.0),
                      child: InkWell(
                        onTap: () {
                          SearchResultRoute().push(context);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              faqs[index]["title"],
                              // "Password reset guide",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.cFFFFFF,
                              ),
                            ),
                            Text(
                              faqs[index]["desc"],
                              // "Step-by-step guide on resetting your password.",
                              style: TextStyle(
                                fontFamily: FontFamily.lato,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.cFFFFFF.withOpacity(.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 364,height: 20,
                      child: Divider(
                        thickness: 2,
                        color: AppColors.cFFFFFF.withOpacity(.6),
                      ),
                    )
                  ],
                ),
                // separatorBuilder: (context, index) {
                //   if (faqs.length == index + 1) {
                //     return SizedBox(
                //       width: 364,
                //       child: Divider(
                //         thickness: 2,
                //         color: AppColors.cFFFFFF.withOpacity(.6),
                //       ),
                //     );
                //   } else {
                //     return SizedBox(
                //       width: 364,
                //       child: Divider(
                //         thickness: 2,
                //         color: AppColors.cFFFFFF.withOpacity(.6),
                //       ),
                //     );
                //   }
                // },
              ),
            ),
            SizedBox(height: 15.09),
          ],
        ),
      ),
    );
  }
}

List faqs = [
  {
    "title": "Password reset guide",
    "desc": "Step-by-step guide on resetting your password.",
  },
  {
    "title": "Video Tutorial",
    "desc": "Watch a video tutorial on how to reset your password.",
  },
  {
    "title": "Common Issues",
    "desc": "FAQs related to common password reset issues,",
  },
  {
    "title": "Contact Support",
    "desc": "Get in touch with our customer support for assistance.",
  },
  {
    "title": "Password Policy",
    "desc": "Learn about our password requirements and guidelines. ",
  },
  {
    "title": "Account security",
    "desc": "FAQs about account security measures.",
  },
  {
    "title": "Troubleshooting",
    "desc": "Tips for troubleshooting password reset problems.",
  },
];
