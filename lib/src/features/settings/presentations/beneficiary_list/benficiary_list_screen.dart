import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_buttons.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class BeneficiaryListScreen extends StatelessWidget {
  const BeneficiaryListScreen({super.key});

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
            const CustomAppBars(title: "My Beneficiaries"),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return const BeneficiaryTemplate();
                },
              ),
            ),
            const SizedBox(height: 138),
            // const Spacer(),
            // Center(
            //   child: CustomGradientButton(
            //     width: 345,
            //     height: 46.38,
            //     title: "Next",
            //     textStyle:
            //         const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            //     onPressed: () {},
            //   ),
            // ),
            // const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class BeneficiaryTemplate extends StatelessWidget {
  const BeneficiaryTemplate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 24.0),
      child: Column(
        children: [
          Row(
            children: [
              Assets.icons.userCircleOutline.svg(),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Daniel Hassan",
                    style: TextStyle(
                      color: AppColors.c000000,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "GT Bank ",
                      style: TextStyle(
                        color: AppColors.c000000.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                      children: [
                        const TextSpan(
                          text: "- 9045562347",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 6),
          SizedBox(
            child: Divider(
              color: AppColors.c7B7A7A,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
