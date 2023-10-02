// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../routing/router.dart';
import '../../../utils/colors.dart';
import '../../home/widgets/your_card_container_widget.dart';
import '../widget/payment_item.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Recharge",
                style: TextStyle(
                  // fontFamily: FontFamily.lato,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 44.0),
              child: Wrap(
                runSpacing: 15,
                children: [
                  {
                    "title": "Airtime",
                    "icon": Assets.icons.airtime2,
                  },
                  {
                    "title": "Buy Data",
                    "icon": Assets.icons.buyData2,
                  },
                ]
                    .map(
                      (e) => PaymentItem(
                        icon: e["icon"],
                        name: e["title"].toString(),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Transactions",
                style: TextStyle(
                  // fontFamily: FontFamily.lato,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 44.0),
              child: Wrap(
                runSpacing: 15,
                children: [
                  {
                    "title": "Add Money",
                    "icon": Assets.icons.addMoney,
                  },
                  {
                    "title": "Withdraw Money",
                    "icon": Assets.icons.withdrawMoney2,
                  },
                  {
                    "title": "Transfer History",
                    "icon": Assets.icons.transactionHistory2,
                  },
                  {
                    "title": "Get Loans",
                    "icon": Assets.icons.getLoan,
                  },
                ]
                    .map(
                      (e) => PaymentItem(
                        icon: e["icon"],
                        name: e["title"].toString(),
                      ),
                    )
                    .toList(),
              ),
            ),

            const SizedBox(height: 20.09),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                "Bill Payments",
                style: TextStyle(
                  // fontFamily: FontFamily.lato,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 44.0),
              child: Wrap(
                runSpacing: 15,
                children: [
                  {
                    "title": "Electricity",
                    "icon": Assets.icons.bulb2,
                  },
                  {
                    "title": "Internet Bills",
                    "icon": Assets.icons.internetBills2,
                  },
                  {
                    "title": "Pay Tv",
                    "icon": Assets.icons.payTv2,
                  },
                  {
                    "title": "Transport",
                    "icon": Assets.icons.transport2,
                  },
                  {
                    "title": "Betting",
                    "icon": Assets.icons.betting2,
                  },
                ]
                    .map(
                      (e) => PaymentItem(
                        icon: e["icon"],
                        name: e["title"].toString(),
                      ),
                    )
                    .toList(),
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class PaymentItemModel {
  final String title;
  final Widget icon;
  final void Function()? onTap;
  PaymentItemModel({
    required this.title,
    required this.icon,
    this.onTap,
  });
}
