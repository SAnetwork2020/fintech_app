import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_gradient_button.dart';
import '../../../../common_widgets/custom_textformfield.dart';
import '../../../../utils/colors.dart';

class AirtimeScreen extends StatelessWidget {
  const AirtimeScreen({super.key});

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
        // backgroundColor: Colors.brown,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const CustomAppBars(title: "Airtime"),
              const SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.only(left: 33.0, right: 32),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: AppColors.cFFFFFF,
                        shape: const CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: AppColors.c000000.withOpacity(.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Assets.icons.arrowLeft.svg(
                        colorFilter: ColorFilter.mode(
                            AppColors.c1DC1B4, BlendMode.srcIn),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Buy Airtime",
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 30,
                      height: 30,
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: AppColors.cFFFFFF,
                        shape: const CircleBorder(),
                        shadows: [
                          BoxShadow(
                            color: AppColors.c000000.withOpacity(.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Assets.icons.arrowRight2.svg(
                        colorFilter: ColorFilter.mode(
                            AppColors.c1DC1B4, BlendMode.srcIn),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 27),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Recent",
                  style: TextStyle(
                    color: AppColors.cFFFFFF,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    {
                      "icons": Assets.images.gloB.path,
                      "number": "0801 234 5678",
                    },
                    {
                      "icons": Assets.images.airtel.path,
                      "number": "0801 234 5678",
                    },
                    {
                      "icons": Assets.images.mtn.path,
                      "number": "0801 234 5678",
                    },
                    {
                      "icons": Assets.images.nineMobile.path,
                      "number": "0801 234 5678",
                    },
                  ]
                      .map(
                        (e) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(e["icons"]!),
                            const SizedBox(height: 10),
                            Text(
                              e["number"]!,
                              // "0801 234 5678",
                              style: TextStyle(
                                fontFamily: FontFamily.lato,
                                color: AppColors.cFFFFFF,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Wrap(
                  spacing: 24.57,
                  runSpacing: 26.23,
                  children: [
                    "100",
                    "200",
                    "500",
                    "1000",
                    "1500",
                    "2000",
                    "2500",
                    "5000"
                  ]
                      .map(
                        (e) => Container(
                          width: 67.43,
                          height: 29.77,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.fromHex("#D9D9D9").withOpacity(.5),
                          ),
                          child: Row(
                            children: [
                              Assets.icons.naira.svg(),
                              Text(
                                // "100",
                                e,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColors.cFFFFFF,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Network",
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    CustomTextFormField(
                      width: 170,
                      readOnly: true,
                      fillColor: AppColors.cFFFFFF,
                      // suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            Assets.images.homeScreen.provider(),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 53),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: const CustomAppBars(
                                              title: "Network"),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Assets.icons.arrowDropdown.svg()),
                      ),

                      hintText: 'Choose Network',
                      hintStyle: TextStyle(
                        color: AppColors.c000000.withOpacity(.6),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Amount (From 50 to 100,000 NGN)",
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    CustomTextFormField(
                      width: 350,
                      hintText: 'Enter Amount',
                      fillColor: AppColors.cFFFFFF,
                      hintStyle: TextStyle(
                        fontFamily: FontFamily.lato,
                        color: AppColors.fromHex("#000000").withOpacity(.6),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone Number",
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    CustomTextFormField(
                      width: 350,
                      hintText: 'Enter Phone Number',
                      fillColor: AppColors.cFFFFFF,
                      hintStyle: TextStyle(
                        fontFamily: FontFamily.lato,
                        color: AppColors.fromHex("#000000").withOpacity(.6),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 33.23),
              // const Spacer(),
              CustomGradientButton(
                height: 47,
                width: 345,
                onPressed: () {},
                title: "Next",
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: FontFamily.lato,
                ),
              ),
              const SizedBox(height: 62),
            ],
          ),
        ),
      ),
    );
  }
}
