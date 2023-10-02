import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_app_bar.dart';
import '../../../utils/colors.dart';
import '../widgets/balance_widget.dart';
import '../widgets/card_container_widget.dart';
import '../widgets/quick_links_widget.dart';
import '../widgets/transaction_item_widget.dart';
import '../widgets/your_card_container_widget.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 21.0),
          child: Text(
            "Your Balance",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: AppColors.cFFFFFF,
            ),
          ),
        ),
        const SizedBox(height: 5),
        const UserBalanceWidget(),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 21, right: 23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Quick Links",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: AppColors.cFFFFFF,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  QuickLinksWidget(title: "title", icon: Assets.icons.buyData),
                  QuickLinksWidget(
                      title: "title", icon: Assets.icons.phoneBold),
                  QuickLinksWidget(title: "title", icon: Assets.icons.addMoney),
                  QuickLinksWidget(
                      title: "title", icon: Assets.icons.withdrawMoney),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 23.0),
              child: Row(
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
            ),
            const SizedBox(height: 5),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
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
                  ),
                  const SizedBox(height: 10),
                  TransactionItemWidget(
                      icon: Assets.images.jonathanDoe.image(),
                      type: "plus",
                      name: "Jonathan Doe",
                      time: "15:10 PM",
                      price: "3,550"),
                  TransactionItemWidget(
                      icon: Assets.images.jonathanDoe.image(),
                      type: "plus",
                      name: "Jonathan Doe",
                      time: "15:10 PM",
                      price: "3,550"),
                  Container(
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
                  ),
                  const SizedBox(height: 10),
                  TransactionItemWidget(
                      icon: Assets.images.jonathanDoe.image(),
                      type: "plus",
                      name: "Jonathan Doe",
                      time: "15:10 PM",
                      price: "3,550"),
                  TransactionItemWidget(
                      icon: Assets.images.glo.image(),
                      type: "minus",
                      name: "Glo Ng Vtu 2349012345678",
                      time: "15:10 PM",
                      price: "3,550"),
                  TransactionItemWidget(
                      icon: Assets.images.glo.image(),
                      type: "minus",
                      name: "Glo Ng Vtu 2349012345678",
                      time: "15:10 PM",
                      price: "3,550"),
                ],
                //   );
                // },
              ),
            ),
          ],
        ),
      ],
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
