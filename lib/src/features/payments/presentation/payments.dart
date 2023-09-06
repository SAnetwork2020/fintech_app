// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fintech_app/src/features/home/presentation/home_screen.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../routing/router.dart';
import '../../../utils/colors.dart';
import '../../home/widgets/your_card_container_widget.dart';

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
            padding: const EdgeInsets.only(left: 33, right: 32.0),
            child: Row(
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
          ),
          const YourCardsWidget(),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Quick Links",
              style: TextStyle(
                // fontFamily: FontFamily.lato,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.c000000,
              ),
            ),
          ),
          SizedBox(
            height: 228,
            child: CustomGridContainer(
              list: quickLinks(context),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Recharge & Bill Payments",
              style: TextStyle(
                // fontFamily: FontFamily.lato,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.c000000,
              ),
            ),
          ),
          SizedBox(
            height: 228,
            child: CustomGridContainer(
              list: billPayments(context),
            ),
          ),
          // UpdatedGridItem(),
        ],
      ),
    );
  }
}

class UpdatedGridItem extends StatelessWidget {
  const UpdatedGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      crossAxisSpacing: 27,
      mainAxisSpacing: 20,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: List.generate(
        billPayments(context).length,
        (index) => GestureDetector(
          onTap: billPayments(context)[index].onTap,
          child: Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.cD9D9D9,
              border: Border.all(
                color: AppColors.c1DC1B4,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 9, top: 11.0),
                  child: billPayments(context)[index].icon,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Center(
                    child: Text(
                      // "Add Money",
                      billPayments(context)[index].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: FontFamily.lato,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.c000000,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomGridContainer extends StatelessWidget {
  const CustomGridContainer({
    super.key,
    required this.list,
    this.onTap,
  });

  final List<PaymentItemModel> list;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      crossAxisSpacing: 27,
      mainAxisSpacing: 20,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: list
          .map(
            (items) => GestureDetector(
              onTap: items.onTap,
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.cD9D9D9,
                  border: Border.all(
                    color: AppColors.c1DC1B4,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 9, top: 11.0),
                      child: items.icon,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Center(
                        child: Text(
                          // "Add Money",
                          items.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.c000000,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
      // List.generate(
      //   list.length,
      //   (index) =>
      // ),
    );
  }
}

List<PaymentItemModel> quickLinks(BuildContext context) => [
      PaymentItemModel(
        title: "Add Money",
        onTap: () {
          const BankTransferRoute().push(context);
        },
        icon: Assets.icons.addMoney.svg(
          colorFilter: ColorFilter.mode(
            AppColors.c1DC1B4,
            BlendMode.srcIn,
          ),
        ),
      ),
      PaymentItemModel(
        title: "Withdraw Money",
        onTap: () {
          const CardlessWithdrawalRoute().push(context);
        },
        icon: Assets.icons.withdrawMoney.svg(),
      ),
      PaymentItemModel(
        title: "Buy Data",
        onTap: () {
          const DataRoute().push(context);
        },
        icon: Assets.icons.buyData.svg(),
      ),
      PaymentItemModel(
        title: "Airtime",
        onTap: () {
          const AirtimeRoute().push(context);
        },
        icon: Assets.icons.airtime.svg(
          colorFilter: ColorFilter.mode(
            AppColors.c1DC1B4,
            BlendMode.srcIn,
          ),
        ),
      ),
      PaymentItemModel(
        title: "Transaction \nHistory",
        onTap: () {
          const TransactionHistoryRoute().push(context);
        },
        icon: Assets.icons.transactionHistory.svg(
          colorFilter: ColorFilter.mode(
            AppColors.c1DC1B4,
            BlendMode.srcIn,
          ),
        ),
      ),
    ];
List<PaymentItemModel> billPayments(BuildContext context) => [
      PaymentItemModel(
        title: "Electricity",
        onTap: () {
          const ElectricityRoute().push(context);
        },
        icon: Assets.icons.bulb.svg(
          colorFilter: ColorFilter.mode(
            AppColors.c1DC1B4,
            BlendMode.srcIn,
          ),
        ),
      ),
      PaymentItemModel(
        title: "Internet Bills",
        onTap: () {
          const InternetRoute().push(context);
        },
        icon: Assets.icons.internetBills.svg(),
      ),
      PaymentItemModel(
        title: "Pay Tv",
        onTap: () {
          const TvRoute().push(context);
        },
        icon: Assets.icons.payTv.svg(),
      ),
      PaymentItemModel(
        title: "Get Loans",
        onTap: () {
          const ApplyForLoanRoute().push(context);
        },
        icon: Assets.icons.getLoan.svg(
          colorFilter: ColorFilter.mode(
            AppColors.c1DC1B4,
            BlendMode.srcIn,
          ),
        ),
      ),
      PaymentItemModel(
        title: "Transport",
        onTap: () {
          const TransportRoute().push(context);
        },
        icon: Assets.icons.transport.svg(),
      ),
      PaymentItemModel(
        title: "Betting",
        onTap: () {
          const BettingRoute().push(context);
        },
        icon: Assets.icons.betting.svg(
          colorFilter: ColorFilter.mode(
            AppColors.c1DC1B4,
            BlendMode.srcIn,
          ),
        ),
      ),
    ];

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
