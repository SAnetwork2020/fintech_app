import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_buttons.dart';
import '../../../../common_widgets/custom_textformfield.dart';
import '../../../../common_widgets/under_construction_widget.dart';
import '../../../../utils/colors.dart';

class BettingScreen extends StatelessWidget {
  const BettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 40),
              const CustomAppBars(title: "Betting"),
              const SizedBox(height: 56),
              // Padding(
              //   padding: const EdgeInsets.only(left: 28.0, right: 27),
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 30,
              //         height: 30,
              //         padding: const EdgeInsets.all(8),
              //         decoration: ShapeDecoration(
              //           color: AppColors.cFFFFFF,
              //           shape: const CircleBorder(),
              //           shadows: [
              //             BoxShadow(
              //               color: AppColors.c000000.withOpacity(.25),
              //               spreadRadius: 0,
              //               blurRadius: 4,
              //               offset: const Offset(0, 4),
              //             ),
              //           ],
              //         ),
              //         child: Assets.icons.arrowLeft.svg(
              //           colorFilter:
              //               ColorFilter.mode(AppColors.c1DC1B4, BlendMode.srcIn),
              //         ),
              //       ),
              //       const Spacer(),
              //       Text(
              //         "Buy Airtime",
              //         style: TextStyle(
              //           color: AppColors.c000000,
              //           fontWeight: FontWeight.w400,
              //           fontSize: 12,
              //         ),
              //       ),
              //       const Spacer(),
              //       Container(
              //         width: 30,
              //         height: 30,
              //         padding: const EdgeInsets.all(8),
              //         decoration: ShapeDecoration(
              //           color: AppColors.cFFFFFF,
              //           shape: const CircleBorder(),
              //           shadows: [
              //             BoxShadow(
              //               color: AppColors.c000000.withOpacity(.25),
              //               spreadRadius: 0,
              //               blurRadius: 4,
              //               offset: const Offset(0, 4),
              //             ),
              //           ],
              //         ),
              //         child: Assets.icons.arrowRight2.svg(
              //           colorFilter:
              //               ColorFilter.mode(AppColors.c1DC1B4, BlendMode.srcIn),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Service Provider",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const ShadowTextFormField(
                      hintText: '',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Package",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    ShadowTextFormField(
                      hintText: '',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Customer Id",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    ShadowTextFormField(
                      hintText: '',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    ShadowTextFormField(
                      hintText: '',
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
                textStyle: TextStyle(
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
