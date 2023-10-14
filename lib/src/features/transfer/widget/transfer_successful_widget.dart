import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_buttons.dart';
import '../../../utils/colors.dart';
import '../../payments/widget/transaction_receipt.dart';
import 'confirm_transfer.dart';

class TransactionSuccessfulWidget extends StatelessWidget {
  const TransactionSuccessfulWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 47),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Assets.icons.backArrow.svg(),
                ),
              ],
            ),
          ),
          SizedBox(height: 109.09),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.cFFFFFF,
            ),
            child: Assets.icons.checkMark.svg(
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Transaction Successful",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: AppColors.cFFFFFF,
            ),
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 7),
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  width: 2,
                  color: AppColors.cFFFFFF.withOpacity(.6),
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                TxnSuccessfulItem(
                  title: "Paid On",
                  desc: "31 Jan 2023, 22:GMT+1",
                ),
                SizedBox(height: 23),
                TxnSuccessfulItem(
                  title: "Sender",
                  desc: "Gregory Stones",
                ),
                SizedBox(height: 23),
                TxnSuccessfulItem(
                  title: "Beneficiary",
                  desc: "Jenna Monday",
                ),
                SizedBox(height: 23),
                TxnSuccessfulItem(
                  title: "Beneficiary Bank",
                  desc: "Access Bank",
                ),
                SizedBox(height: 23),
                Container(
                  // width: 350,
                  height: 47,
                  color: AppColors.cD9D9D9.withOpacity(.6),
                  child: TxnSuccessfulItem(
                    title: "Amount",
                    desc: "1,010.75 NGN",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomWhiteButton(
                radius: 10,
                width: 116,
                height: 42,
                title: "OK",
              ),
              SizedBox(width: 40),
              CustomGradientButton(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.cFFFFFF,
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    AppColors.c1DC1B4,
                    AppColors.c3E55D2,
                    // AppColors.cD9D9D9,
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
                width: 116,
                height: 42,
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => TransactionFailedWidget(),
                  );
                },
                title: "Share",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TransactionFailedWidget extends StatelessWidget {
  const TransactionFailedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 47),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Assets.icons.backArrow.svg(),
                ),
              ],
            ),
          ),
          SizedBox(height: 109.09),
          Text(
            "!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FontFamily.lato,
              fontWeight: FontWeight.w500,
              fontSize: 80,
              color: AppColors.cFF0000,
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: AppColors.cFFFFFF,
          //   ),
          //   child: Assets.icons.checkMark.svg(
          //     width: 90,
          //     height: 90,
          //   ),
          // ),
          SizedBox(height: 90),
          Text(
            "Transaction Failed",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: AppColors.cFFFFFF,
            ),
          ),
          SizedBox(height: 10),
          Text(
            """An error occurred while trying to process \nyour transaction, please wait a few \nminutes and try again.""",
            style: TextStyle(
              fontFamily: FontFamily.lato,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.cFFFFFF,
            ),
          ),
          SizedBox(height: 30),
          CustomGradientButton(
            width: 345,
            height: 47,
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: AppColors.cFFFFFF,
            ),
            onPressed: () {},
            title: "Done",
          ),
        ],
      ),
    );
  }
}
