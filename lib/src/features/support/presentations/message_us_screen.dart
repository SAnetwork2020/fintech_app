import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class MessageUsScreen extends StatelessWidget {
  const MessageUsScreen({super.key});

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
                  SizedBox(width: 15),
                  Stack(
                    children: [
                      Container(
                        width: 49,
                        height: 49,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: AppColors.cFFFFFF,
                          ),
                        ),
                        child: Assets.images.gregoryStones.image(),
                      ),
                      Positioned(
                        left: 35,
                        top: 35,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: AppColors.fromHex("#0FA958"),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Text(
                    textAlign: TextAlign.center,
                    "Julia",
                    style: TextStyle(
                      color: AppColors.cFFFFFF,
                      fontSize: 20,
                      height: 0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 22.09),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomTextFormField(
                width: double.maxFinite,
                height: 48,
                filled: true,
                hintText: "Reply Here...",
                hintStyle: TextStyle(
                  fontFamily: FontFamily.lato,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.fromHex("#FFFFFF").withOpacity(.5),
                ),
                fillColor: AppColors.fromHex("#050017"),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Assets.icons.emoji.svg(),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.icons.attachment.svg(),
                      SizedBox(width: 20),
                      Assets.icons.send.svg(),
                    ],
                  ),
                ),
                inputBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.fromHex("#28262C"),
                  ),
                  // borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
