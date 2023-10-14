import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_buttons.dart';
import '../../../../common_widgets/custom_textformfield.dart';
import '../../../../common_widgets/under_construction_widget.dart';
import '../../../../utils/colors.dart';

class ApplyForLoanScreen extends StatelessWidget {
  const ApplyForLoanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const CustomAppBars(title: "Apply For Loan"),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  "Pending Payments",
                  style: TextStyle(
                    color: AppColors.c000000,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 158,
                margin: const EdgeInsets.only(left: 22, right: 21),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.none,
                    image: Assets.images.historyBg.provider(),
                  ),
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: const Alignment(.00, -1.00),
                    end: const Alignment(0, 1),
                    colors: [
                      AppColors.c1DC1B4.withOpacity(.63),
                      AppColors.c3E55D2.withOpacity(.63),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                      color: AppColors.c000000.withOpacity(.25),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Assets.images.gregoryStones.image(width: 49, height: 49),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Due Date",
                            style: TextStyle(
                              fontFamily: FontFamily.lato,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                          Text(
                            "19/12/2023",
                            style: TextStyle(
                              fontFamily: FontFamily.lato,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.cE91515,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Interest",
                            style: TextStyle(
                              fontFamily: FontFamily.lato,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                          Row(
                            children: [
                              Assets.icons.naira.svg(
                                width: 15,
                                height: 15,
                                colorFilter: ColorFilter.mode(
                                  AppColors.c0CF516,
                                  BlendMode.srcIn,
                                ),
                              ),
                              Text(
                                "5,000",
                                style: TextStyle(
                                  fontFamily: FontFamily.lato,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.c0CF516,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Assets.icons.wallet.svg(),
                              Text(
                                "Total Loan Amount",
                                style: TextStyle(
                                  fontFamily: FontFamily.lato,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.cFFFFFF,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Assets.icons.naira.svg(
                                width: 13.33,
                                height: 15,
                                colorFilter: ColorFilter.mode(
                                  AppColors.cE91515,
                                  BlendMode.srcIn,
                                ),
                              ),
                              Text(
                                "50,000",
                                style: TextStyle(
                                  fontFamily: FontFamily.lato,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.cE91515,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose Amount",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const ShadowTextFormField(
                      hintText: 'Loan Amount',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.lato,
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
                      "Frequency",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const ShadowTextFormField(
                      hintText: 'Select Time Rate',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.lato,
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
                      "Loan Type",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const ShadowTextFormField(
                      hintText: 'Choose Type',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.lato,
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
                      "Reasons For Application",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const ShadowTextFormField(
                      hintText: 'Message',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.lato,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Spacer(),
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
          const UnderConstruction(),
        ],
      ),
    );
  }
}

