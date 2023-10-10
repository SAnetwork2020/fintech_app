import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_gradient_button.dart';
import '../../../../common_widgets/custom_textformfield.dart';
import '../../../../common_widgets/enter_pin_widget.dart';
import '../../../../utils/colors.dart';
import '../buy_airtime/widget/select_network.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _AirtimeScreenState();
}

class _AirtimeScreenState extends State<DataScreen> {
  String? chooseNetwork;
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
              CustomAppBars(
                title: "Data",
              
              ),
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
                      "Buy Data",
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

              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select a Plan",
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () async {
                        chooseNetwork = await showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return const SelectNetworkWidget();
                          },
                        );
                        setState(() {});
                      },
                      child: Container(
                        width: 265,
                        height: 45,
                        padding: EdgeInsets.only(left: 18, right: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.c1DC1B4),
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.cFFFFFF,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 2,
                              spreadRadius: 0,
                              color: AppColors.c000000.withOpacity(.25),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chooseNetwork ?? 'Choose a Plan',
                              style: TextStyle(
                                color: AppColors.c000000.withOpacity(.6),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            Assets.icons.arrowDropdown.svg(
                                colorFilter: ColorFilter.mode(
                              AppColors.c000000.withOpacity(.6),
                              BlendMode.srcIn,
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

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
                    InkWell(
                      onTap: () async {
                        chooseNetwork = await showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return const SelectNetworkWidget();
                          },
                        );
                        setState(() {});
                      },
                      child: Container(
                        width: 170,
                        height: 45,
                        padding: EdgeInsets.only(left: 18, right: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.c1DC1B4),
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.cFFFFFF,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 2,
                              spreadRadius: 0,
                              color: AppColors.c000000.withOpacity(.25),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chooseNetwork ?? 'Choose Network',
                              style: TextStyle(
                                color: AppColors.c000000.withOpacity(.6),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            Assets.icons.arrowDropdown.svg(
                                colorFilter: ColorFilter.mode(
                              AppColors.c000000.withOpacity(.6),
                              BlendMode.srcIn,
                            )),
                          ],
                        ),
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
                      keyboardType: TextInputType.number,
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
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return EnterPinWidget(
                        onPressed: () {
                          context.pop();
                          context.pop();
                        },
                        title: 'Data Purchase Successful',
                        desc:
                            "Your data is on its way, check your\n notifications for details.",
                      );
                    },
                  );
                },
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
