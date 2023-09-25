import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_app_bar.dart';
import '../../../utils/colors.dart';
import '../widgets/card_container_widget.dart';
import '../widgets/your_card_container_widget.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            title: "Home",
            onPressed: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),
          // const SizedBox(height: 46.91),
          // Row(
          //   children: [
          //     IconButton(
          //       color: AppColors.cFFFFFF,
          //       onPressed: () {
          //         scaffoldKey.currentState?.openDrawer();
          //       },
          //       icon: Assets.icons.menu.svg(),
          //     ),
          //     const Spacer(),
          //     Text(
          //       "Home",
          //       style: TextStyle(
          //         fontSize: 15,
          //         fontWeight: FontWeight.w600,
          //         color: AppColors.cFFFFFF,
          //       ),
          //     ),
          //     const Spacer(),
          //   ],
          // ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Balance Overview",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.cB0B31,
                      ),
                    ),
                    Container(
                      // width: 136,
                      // height: 20,
                      padding: const EdgeInsets.only(
                          left: 11, top: 7, bottom: 6, right: 10),
                      decoration: BoxDecoration(
                        // fixedSize: const Size(140, 30),
                        shape: BoxShape.rectangle,

                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColors.c000000,
                          style: BorderStyle.solid,
                        ),
                      ),
                      // onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.calender.svg(),
                          const SizedBox(width: 10),
                          Text(
                            "15th April, 2022",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.c5A5A5B,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Cards",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.lato,
                        fontWeight: FontWeight.w700,
                        color: AppColors.c000000.withOpacity(.64),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Assets.icons.addNew.svg(),
                        label: Text(
                          "Add New",
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.c000000.withOpacity(.64),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const YourCardsWidget(),
          const SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.only(left: 33.0),
            child: Text(
              "Your Overview",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.cB0B31,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                CardContainerWidget(
                  title: "Commodities",
                  price: "560k",
                  icon: Assets.icons.commodities.svg(),
                  containerColor: AppColors.cFFDCAB,
                ),
                const SizedBox(height: 20),
                CardContainerWidget(
                  title: "Investments",
                  price: "260k",
                  icon: Assets.icons.investments.svg(),
                  containerColor: AppColors.cCFCFF4,
                ),
                const SizedBox(height: 20),
                CardContainerWidget(
                  isEmpty: false,
                  title: "Active Loans",
                  price: "26",
                  icon: Assets.icons.investments.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.c701919, BlendMode.srcIn),
                  ),
                  containerColor: AppColors.cFDACAC,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Center(child: Assets.images.graph.image()),
          const SizedBox(height: 64.76),
          Center(child: Assets.images.chart.image()),
          const SizedBox(height: 84.76),
          Container(
            height: 50,
            width: double.infinity,
            color: AppColors.c1DC1B4,
            child: Center(
              child: Text(
                "Message Us",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
