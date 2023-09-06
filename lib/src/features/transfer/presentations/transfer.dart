import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/custom_gradient_button.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(changeColor);
    super.initState();
  }

  changeColor() {
    print("tab-length: ${_tabController.length}");
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 45),
        Padding(
          padding: const EdgeInsets.only(left: 17, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: TabBar(
                    splashFactory: NoSplash.splashFactory,
                    splashBorderRadius: BorderRadius.circular(10),
                    physics: const ClampingScrollPhysics(),
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicatorColor: AppColors.c1DC1B4.withOpacity(.74),
                    indicator: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    isScrollable: true,
                    controller: _tabController,
                    tabs: [
                      // Tab(
                      //   height: 60,
                      //   child: Container(
                      //     width: 157,
                      //     // height: 60,
                      //     decoration: BoxDecoration(
                      //       shape: BoxShape.rectangle,
                      //       color: _tabController.index == 0
                      //           ? AppColors.c1DC1B4.withOpacity(.74)
                      //           : Colors.white,
                      //       borderRadius: BorderRadius.circular(10),
                      //       boxShadow: [
                      //         const BoxShadow(
                      //           color: Color(0x3F000000),
                      //           blurRadius: 2,
                      //           offset: Offset(0, 4),
                      //           spreadRadius: 0,
                      //         ),
                      //       ],
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Assets.icons.logo.svg(
                      //           width: 28.13,
                      //           height: 28.13,
                      //           colorFilter: ColorFilter.mode(
                      //               _tabController.index == 0
                      //                   ? AppColors.cFFFFFF
                      //                   : AppColors.c000000,
                      //               BlendMode.srcIn),
                      //         ),
                      //         SizedBox(width: 10),
                      //         Column(
                      //           mainAxisSize: MainAxisSize.min,
                      //           children: [
                      //             // Text("PAYFLEX \nAccount"),
                      //             Text("PAYFLEX"),
                      //             Text("Account"),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // Tab(
                      //   height: 60,
                      //   // text: "Other \nBanks",
                      //   child: Container(
                      //     width: 157,
                      //     // height: 60,
                      //     // padding: EdgeInsets.all(6),
                      //     decoration: BoxDecoration(
                      //       shape: BoxShape.rectangle,
                      //       color: _tabController.index == 1
                      //           ? AppColors.c1DC1B4.withOpacity(.74)
                      //           : Colors.white,
                      //       borderRadius: BorderRadius.circular(10),
                      //       boxShadow: [
                      //         const BoxShadow(
                      //           color: Color(0x3F000000),
                      //           blurRadius: 2,
                      //           offset: Offset(0, 4),
                      //           spreadRadius: 0,
                      //         ),
                      //       ],
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Assets.icons.bankOutline.svg(
                      //             width: 30,
                      //             height: 30,
                      //             colorFilter: ColorFilter.mode(
                      //                 _tabController.index == 1
                      //                     ? AppColors.cFFFFFF
                      //                     : AppColors.c000000,
                      //                 BlendMode.srcIn)),
                      //         SizedBox(width: 10),
                      //         Column(
                      //           mainAxisSize: MainAxisSize.min,
                      //           children: [
                      //             Text("Other"),
                      //             Text("Banks"),
                      //             // Text("Other \nBanks"),
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      Tab(
                        height: 60,
                        child: ShadowContainer(
                          fillColor: _tabController.index == 0
                              ? AppColors.c1DC1B4.withOpacity(.74)
                              : Colors.white,
                          title: "PAYFLEX \nAccount",
                          icon: Container(
                            width: 37,
                            height: 37,
                            padding: const EdgeInsets.all(4),
                            decoration: ShapeDecoration(
                              shape: const OvalBorder(),
                              color: AppColors.cD9D9D9,
                              shadows: [
                                BoxShadow(
                                  offset: const Offset(0, 2),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  color: AppColors.c000000.withOpacity(.25),
                                ),
                              ],
                            ),
                            child: Assets.icons.logo.svg(
                                width: 28.13,
                                height: 28.13,
                                colorFilter: ColorFilter.mode(
                                    _tabController.index == 0
                                        ? AppColors.cFFFFFF
                                        : AppColors.c000000,
                                    BlendMode.srcIn)),
                          ),
                          style: TextStyle(
                            // fontFamily: FontFamily.lato,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: _tabController.index == 0
                                ? AppColors.cFFFFFF
                                : AppColors.c000000,
                            // AppColors.c000000,
                          ),
                        ),
                      ),
                      Tab(
                        height: 60,
                        child: ShadowContainer(
                          fillColor: _tabController.index == 1
                              ? AppColors.c1DC1B4.withOpacity(.74)
                              : Colors.white,
                          title: "Other \nBanks",
                          icon: Assets.icons.bankOutline.svg(
                              width: 30,
                              height: 30,
                              colorFilter: ColorFilter.mode(
                                  _tabController.index == 1
                                      ? AppColors.cFFFFFF
                                      : AppColors.c000000,
                                  BlendMode.srcIn)),
                          style: TextStyle(
                            // fontFamily: FontFamily.lato,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: _tabController.index == 1
                                ? AppColors.cFFFFFF
                                : AppColors.c000000,

                            // AppColors.c000000,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Column(
                children: [
                  const SizedBox(height: 39),
                  const TransferTextForm(
                      title: "Account Number", hintText: "(0000-000-000)"),
                  const SizedBox(height: 30),
                  const TransferTextForm(
                      title: "Amount (Naira)", hintText: "N2000"),
                  const SizedBox(height: 30),
                  const TransferTextForm(
                      title: "Message (optional)", hintText: "Enter Message"),
                  // const Placeholder(),
                  // CustomGradientButton()
                  const SizedBox(height: 39.62),
                  CustomGradientButton(
                    width: 204.86,
                    height: 46.38,
                    title: "Done",
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                    onPressed: () {
                      const TransactionSuccessfulRoute().push(context);
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 39),
                  const TransferTextForm(title: "Bank Name"),
                  const SizedBox(height: 30),
                  const TransferTextForm(
                      title: "Account Number", hintText: "(0000-000-000)"),
                  const SizedBox(height: 30),
                  const TransferTextForm(
                      title: "Amount (Naira)", hintText: "N2000"),
                  const SizedBox(height: 30),
                  const TransferTextForm(
                      title: "Message (optional)", hintText: "Enter Message"),
                  // const Placeholder(),
                  // CustomGradientButton()
                  const SizedBox(height: 39.62),
                  CustomGradientButton(
                    width: 204.86,
                    height: 46.38,
                    title: "Done",
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                    onPressed: () {
                      const TransactionFailedRoute().push(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TransferTextForm extends StatelessWidget {
  const TransferTextForm({
    super.key,
    required this.title,
    this.hintText,
  });
  final String title;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: AppColors.c000000,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Assets.icons.checkMark.svg(),
              ),
            ],
          ),
        ),
        ShadowTextFormField(hintText: hintText),
      ],
    );
  }
}

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({
    super.key,
    required this.fillColor,
    required this.title,
    required this.icon,
    required this.style,
  });
  final Color fillColor;
  final String title;
  final Widget icon;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 157,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: fillColor,
        // AppColors.cFFFFFF,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 2,
            spreadRadius: 0,
            color: AppColors.c000000.withOpacity(.25),
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.94),
            child: icon,
            //  Assets.icons.logo.svg(
            //     width: 28.13,
            //     height: 28.13,
            //     colorFilter:
            //         ColorFilter.mode(AppColors.c000000, BlendMode.srcIn)),
          ),
          const SizedBox(width: 14.94),
          Text(
            title,
            // "PAYFLEX \nAccount",
            textAlign: TextAlign.center,
            style: style,
          ),
        ],
      ),
    );
  }
}
