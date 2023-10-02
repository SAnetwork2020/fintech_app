import 'package:flutter/material.dart';

import 'package:fintech_app/src/routing/router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/custom_gradient_button.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';
import '../widget/shadow_container_widget.dart';
import '../widget/transfer_textform_widget.dart';

class TransferOtherBankScreen extends StatefulWidget {
  const TransferOtherBankScreen({super.key});

  @override
  State<TransferOtherBankScreen> createState() => _TransferOtherBankScreenState();
}

class _TransferOtherBankScreenState extends State<TransferOtherBankScreen>
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
    return SafeArea(
      child: Column(
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
                        // const TransactionSuccessfulRoute().push(context);
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
                        // const TransactionFailedRoute().push(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



