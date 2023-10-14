import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/custom_app_bar.dart';
import '../../../common_widgets/custom_buttons.dart';
import '../../../utils/colors.dart';
import '../../../utils/themes.dart';
import '../widget/other_banks_tab_view.dart';
import '../widget/payflex_account_tab_view.dart';
import '../widget/shadow_container_widget.dart';
import '../widget/transfer_textform_widget.dart';

class TransferToScreen extends StatefulWidget {
  const TransferToScreen({super.key});

  @override
  State<TransferToScreen> createState() => _TransferToScreenState();
}

class _TransferToScreenState extends State<TransferToScreen>
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
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 45),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: CustomAppBars(title: "Transfer"),
          ),
          SizedBox(height: 34),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabBar(
                automaticIndicatorColorAdjustment: false,
                splashFactory: NoSplash.splashFactory,
                splashBorderRadius: BorderRadius.circular(10),
                physics: const ClampingScrollPhysics(),
                indicatorSize: TabBarIndicatorSize.label,
                // unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                // indicatorColor: AppColors.c1DC1B4.withOpacity(.74),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                isScrollable: true,
                controller: _tabController,
                tabs: [
                  Tab(
                    height: 47,
                    child: ShadowContainer(
                      gradient:
                          _tabController.index == 0 ? customGradient : null,
                      fillColor: _tabController.index == 0
                          ? AppColors.c1DC1B4.withOpacity(.74)
                          : Colors.white,
                      title: "Payflex \nAccount",
                      icon: Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          shape: const OvalBorder(),
                          color: _tabController.index == 0
                              ? AppColors.cFFFFFF
                              : AppColors.c000000,
                        ),
                        child: Assets.icons.logo.svg(),
                      ),
                      style: TextStyle(
                        // fontFamily: FontFamily.lato,
                        fontSize: 15,
                        height: 1,
                        fontWeight: FontWeight.w600,
                        color: _tabController.index == 0
                            ? AppColors.cFFFFFF
                            : AppColors.c000000,
                        // AppColors.c000000,
                      ),
                    ),
                  ),
                  Tab(
                    height: 47,
                    child: ShadowContainer(
                      gradient:
                          _tabController.index == 1 ? customGradient : null,
                      fillColor: _tabController.index == 1
                          ? AppColors.c1DC1B4.withOpacity(.74)
                          : Colors.white,
                      title: "Other Banks",
                      icon: Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(6),
                        decoration: ShapeDecoration(
                          shape: const OvalBorder(),
                          color: _tabController.index == 1
                              ? AppColors.cFFFFFF
                              : AppColors.c000000,
                        ),
                        child: Assets.icons.bankOutline.svg(
                          // width: 30,
                          // height: 30,
                          colorFilter: ColorFilter.mode(
                            _tabController.index == 1
                                ? AppColors.c000000
                                : AppColors.cFFFFFF,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: _tabController.index == 1
                            ? AppColors.cFFFFFF
                            : AppColors.c000000,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                PayflexAccountTabView(),
                OtherBanksTabView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
