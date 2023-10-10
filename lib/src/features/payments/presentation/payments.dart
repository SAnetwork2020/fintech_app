// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return SingleChildScrollView(
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
              spacing: 15,
              children: [
                {
                  "title": "Airtime",
                  "icon": Assets.icons.airtime2,
                  "onTap": const AirtimeRoute().location,
                },
                {
                  "title": "Buy Data",
                  "icon": Assets.icons.buyData2,
                  "onTap": const DataRoute().location,
                },
              ]
                  .map(
                    (e) => PaymentItem(
                      onTap: () {
                        context.push(e["onTap"].toString());
                      },
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
              spacing: 15,
              children: [
                {
                  "title": "Add Money",
                  "icon": Assets.icons.addMoney,
                  "onTap": const AddMoneyRoute().location,
                  // "onTap":
                },
                {
                  "title": "Withdraw Money",
                  "icon": Assets.icons.withdrawMoney2,
                  "onTap": const CardlessWithdrawalRoute().location,
                },
                {
                  "title": "Transfer History",
                  "icon": Assets.icons.transactionHistory2,
                  "onTap": const TransactionHistoryRoute().location,
                },
                {
                  "title": "Get Loans",
                  "icon": Assets.icons.getLoan,
                  "onTap": const ApplyForLoanRoute().location,
                },
              ].asMap().entries.map((entry) {
                final e = entry.value;
                final firstItem = entry.key == 0;
                if (firstItem) {
                  return InkWell(
                    onTap: () {
                      context.push(e["onTap"].toString());
                    },
                    child: Stack(
                      children: [
                        PaymentItem(
                          icon: e["icon"],
                          name: e["title"].toString(),
                        ),
                        Positioned.fill(
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.c000000.withOpacity(.70),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return PaymentItem(
                    icon: e["icon"],
                    onTap: () {
                      context.push(e["onTap"].toString());
                    },
                    name: e["title"].toString(),
                  );
                }
              }).toList(),
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
              spacing: 15,
              children: [
                {
                  "title": "Electricity",
                  "icon": Assets.icons.bulb2,
                  "onTap": const ElectricityRoute().location,
                },
                {
                  "title": "Internet Bills",
                  "icon": Assets.icons.internetBills2,
                  "onTap": const InternetRoute().location,
                },
                {
                  "title": "Pay Tv",
                  "icon": Assets.icons.payTv2,
                  "onTap": const PaytvRoute().location,
                },
                {
                  "title": "Transport",
                  "icon": Assets.icons.transport2,
                  "onTap": const TransportRoute().location,
                },
                {
                  "title": "Betting",
                  "icon": Assets.icons.betting2,
                  "onTap": const BettingRoute().location,
                },
              ]
                  .map(
                    (e) => PaymentItem(
                      icon: e["icon"],
                      onTap: () {
                        context.push(e["onTap"].toString());
                      },
                      name: e["title"].toString(),
                    ),
                  )
                  .toList(),
            ),
          ),

          const SizedBox(height: 15),
        ],
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
