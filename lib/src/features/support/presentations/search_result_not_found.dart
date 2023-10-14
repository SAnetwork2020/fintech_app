import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../routing/router.dart';
import '../../../utils/colors.dart';

class SearchResulNotFoundScreen extends StatelessWidget {
  const SearchResulNotFoundScreen({super.key});

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
                    onTap: () => const SearchResulFoundRoute().push(context),
                    child: Assets.icons.close.svg()),
              ),
              inputBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.c000000.withOpacity(.20),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            // CustomTextF
            SizedBox(height: 156.59),
            Assets.images.noData.image(),
            SizedBox(height: 15.09),
            Text(
              "No results found",
              style: TextStyle(
                fontFamily: FontFamily.lato,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: AppColors.cFFFFFF,
              ),
            )
          ],
        ),
      ),
    );
  }
}
