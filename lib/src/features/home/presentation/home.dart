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
              scaffoldKey.currentState?.openDrawer();
            },
          ),
          const SizedBox(height: 25),
          Text(
            "Your Balance",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.cFFFFFF,
            ),
          ),
          Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              color: AppColors.c050017,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: AppColors.c1DC1B4,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, right: 20),
                      child: Assets.images.gregoryStones.image(
                        width: 49,
                        height: 49,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Total Amount",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "\$75,253",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColors.cFFFFFF,
                      ),
                    ),
                    const SizedBox(width: 9),
                    Assets.icons.retry.svg(
                      width: 15,
                      height: 15,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AmountItems(
                      title: "Income",
                      price: "\$5,600",
                      icon: Assets.icons.arrowUp.svg(),
                    ),
                    const SizedBox(width: 30),
                    AmountItems(
                      title: "Spent",
                      price: "\$5,600",
                      icon: Assets.icons.arrowDown2.svg(),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Column(
            children: [
              Text(
                "Quick Links",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.cFFFFFF,
                ),
              ),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.c1DC1B4,
                  border: Border.all(
                    color: AppColors.cFFFFFF,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 9, top: 11.0),
                      child: Assets.icons.buyData.svg(
                        colorFilter: ColorFilter.mode(
                          AppColors.cFFFFFF,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Center(
                        child: Text(
                          "Add Money",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.cFFFFFF,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transaction",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.c1DC1B4,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 15),
                    width: double.maxFinite,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AppColors.cD9D9D9.withOpacity(.5),
                    ),
                    child: Text(
                      "18 Sep 2023",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: AppColors.cFFFFFF.withOpacity(.6),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AmountItems extends StatelessWidget {
  const AmountItems({
    super.key,
    required this.title,
    required this.price,
    required this.icon,
  });
  final String title, price;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF.withOpacity(.2),
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(
        // color: AppColors.c1DC1B4,
        // ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.cFFFFFF,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                // Assets.i
                // const SizedBox(width: 30),
                icon,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
