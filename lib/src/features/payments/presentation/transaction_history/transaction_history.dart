// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../utils/colors.dart';

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  Map<DateTime, List<TransactionHistoryData>> groupTransactionsByDate(
      List<TransactionHistoryData> transactions) {
    Map<DateTime, List<TransactionHistoryData>> groupedTransactions = {};
    for (var transaction in transactions) {
      DateTime dateOnly = DateTime(
          transaction.date.year, transaction.date.month, transaction.date.day);
      if (groupedTransactions.containsKey(dateOnly)) {
        groupedTransactions[dateOnly]!.add(transaction);
      } else {
        groupedTransactions[dateOnly] = [transaction];
      }
    }
    return groupedTransactions;
  }

  @override
  Widget build(BuildContext context) {
    Map<DateTime, List<TransactionHistoryData>> groupedTransactions =
        groupTransactionsByDate(transactionHistory);
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
          // alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 40),
            const CustomAppBars(title: "Transaction  History"),
            const SizedBox(height: 12),
            Container(
              // width: 360,
              height: 40,
              padding: const EdgeInsets.only(left: 14, right: 16.75),
              margin: const EdgeInsets.only(left: 17, right: 16),
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
              ),
              child: Row(
                children: [
                  HistoryCategories(
                    title: "All Categories",
                    icon: Assets.icons.categoryIcon,
                  ),
                  const SizedBox(width: 8),
                  HistoryCategories(
                    title: "All Status",
                    icon: Assets.icons.allStatusIcon,
                  ),
                  const SizedBox(width: 8),
                  HistoryCategories(
                    title: "Last Week",
                    icon: Assets.icons.categoryIcon,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 17),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                      color: AppColors.c000000,
                      fontFamily: FontFamily.lato,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Assets.icons.arrowDropdown.svg(),
                ],
              ),
            ),
            const SizedBox(height: 17),
            ListView.separated(
              shrinkWrap: true,
              itemCount: groupedTransactions.length,
              separatorBuilder: (context, index) => SizedBox(height: 47),
              itemBuilder: (context, index) {
                DateTime date = groupedTransactions.keys.elementAt(index);
                List<TransactionHistoryData> transactionsForDate =
                    groupedTransactions[date]!;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 21.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(
                              color: AppColors.c000000,
                              fontFamily: FontFamily.lato,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Assets.icons.arrowDropdown.svg(),
                        ],
                      ),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: transactionsForDate.length,
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 17, right: 19.54),
                        child: Divider(
                          color: AppColors.c000000.withOpacity(.25),
                        ),
                      ),
                      itemBuilder: (context, subIndex) {
                        TransactionHistoryData transaction =
                            transactionsForDate[subIndex];
                        return Container(
                          padding:
                              const EdgeInsets.only(left: 17, right: 19.54),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  // Assets.icons.wallet.svg(),
                                  Badge(
                                    alignment: Alignment.topLeft,
                                    backgroundColor: AppColors.c1DC1B4,
                                    child: Assets.icons.topUp.svg(),
                                  ),
                                  const SizedBox(width: 14.17),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance top up",
                                        // transaction.
                                        style: TextStyle(
                                          color: AppColors.c000000,
                                          fontFamily: FontFamily.lato,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "15:10",
                                            style: TextStyle(
                                              color: AppColors.c000000
                                                  .withOpacity(.7),
                                              fontFamily: FontFamily.lato,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(width: 10.25),
                                          Assets.icons.dot.svg(),
                                          const SizedBox(width: 8.25),
                                          Text(
                                            "pending",
                                            style: TextStyle(
                                              color: AppColors.c000000
                                                  .withOpacity(.7),
                                              fontFamily: FontFamily.lato,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Assets.icons.cross.svg(),
                                  const SizedBox(width: 2),
                                  Assets.icons.naira.svg(
                                    height: 10,
                                    width: 10,
                                    colorFilter: ColorFilter.mode(
                                      AppColors.c000000,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  const SizedBox(width: 3.67),
                                  Text(
                                    "3,550",
                                    style: TextStyle(
                                      color: AppColors.c000000.withOpacity(.7),
                                      fontFamily: FontFamily.lato,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 15.96),
                                  Assets.icons.arrowRight.svg(),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryCategories extends StatelessWidget {
  const HistoryCategories({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final SvgGenImage icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon.svg(colorFilter: ColorFilter.mode(AppColors.c1DC1B4, BlendMode.srcIn,),),
        const SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            color: AppColors.c000000,
            fontFamily: FontFamily.lato,
            fontSize: 10,
          ),
        ),
        const SizedBox(width: 18.75),
        //
        Assets.icons.arrowDown.svg(),
      ],
    );
  }
}

class TransactionHistoryData {
  final String title;
  final String price;
  final bool debit;
  final String time;
  final String status;
  final DateTime date;
  TransactionHistoryData({
    this.debit = false,
    required this.title,
    required this.price,
    required this.time,
    required this.status,
    required this.date,
  });
}

List<TransactionHistoryData> transactionHistory = [
  TransactionHistoryData(
      title: "Balance top up",
      price: "3,550",
      time: "15:10",
      status: "pending",
      debit: false,
      date: DateTime.now().subtract(const Duration(days: 1))),
  TransactionHistoryData(
      title: "Bank Payment",
      price: "3,550",
      time: "14:30",
      status: "completed",
      debit: true,
      date: DateTime.now().subtract(const Duration(days: 1))),
  TransactionHistoryData(
      title: "Balance top up",
      price: "3,550",
      time: "12:25",
      status: "completed",
      debit: false,
      date: DateTime.now().subtract(const Duration(days: 1))),
  TransactionHistoryData(
      title: "Balance top up",
      price: "3,550",
      time: "15:10",
      status: "pending",
      debit: false,
      date: DateTime.now().subtract(const Duration(days: 1))),
  TransactionHistoryData(
      title: "Bank Payment",
      price: "3,550",
      time: "14:30",
      status: "completed",
      debit: true,
      date: DateTime.now().subtract(const Duration(days: 1))),
  TransactionHistoryData(
      title: "Balance top up",
      price: "3,550",
      time: "12:25",
      status: "completed",
      debit: false,
      date: DateTime.now().subtract(const Duration(days: 1))),
  TransactionHistoryData(
    title: "Balance top up",
    price: "3,550",
    time: "15:10",
    status: "pending",
    debit: false,
    date: DateTime.now(),
  ),
  TransactionHistoryData(
    title: "Bank Payment",
    price: "3,550",
    time: "14:30",
    status: "completed",
    debit: true,
    date: DateTime.now(),
  ),
  TransactionHistoryData(
    title: "Balance top up",
    price: "3,550",
    time: "12:25",
    status: "completed",
    debit: false,
    date: DateTime.now(),
  ),
  TransactionHistoryData(
    title: "Balance top up",
    price: "3,550",
    time: "15:10",
    status: "pending",
    debit: false,
    date: DateTime.now(),
  ),
  TransactionHistoryData(
    title: "Bank Payment",
    price: "3,550",
    time: "14:30",
    status: "completed",
    debit: true,
    date: DateTime.now(),
  ),
  TransactionHistoryData(
    title: "Balance top up",
    price: "3,550",
    time: "12:25",
    status: "completed",
    debit: false,
    date: DateTime.now(),
  ),
];
