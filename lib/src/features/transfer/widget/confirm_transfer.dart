import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_app_bar.dart';
import '../../../common_widgets/custom_buttons.dart';
import '../../../common_widgets/enter_pin_widget.dart';
import '../../../utils/colors.dart';
import '../../payments/widget/transaction_receipt.dart';
import 'transfer_successful_widget.dart';

class ConfirmTransferWidget extends StatelessWidget {
  const ConfirmTransferWidget({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: CustomAppBars(title: "Confirm Transfer"),
          ),
          SizedBox(height: 115),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Transfer From:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(8),
                        child: Assets.icons.logo.svg()),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gregory Stones",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: AppColors.cFFFFFF,
                          ),
                        ),
                        Text(
                          "Savings Account : 1234567890",
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.cFFFFFF.withOpacity(.6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Transfer To:",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.images.accessbank.image(),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jenna Monday",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: AppColors.cFFFFFF,
                          ),
                        ),
                        Text(
                          "Savings Account : 1234567890",
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.cFFFFFF.withOpacity(.6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 79),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transaction Amount: 1000",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Transaction Fees: 10.75",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Total Amount: 1010.75",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.cFFFFFF,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 59),
          CustomGradientButton(
            width: 345,
            height: 45,
            title: "Confirm",
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: AppColors.cFFFFFF,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return EnterPinWidget(
                    title: 'Enter Your PIN',
                    onPressed: () {},
                    child: TransactionSuccessfulWidget(),
                  );
                },
              );
              // const TransactionFailedRoute().push(context);
            },
          ),
        ],
      ),
    );
  }
}


class TxnSuccessfulItem extends StatelessWidget {
  const TxnSuccessfulItem({
    super.key,
    required this.title,
    required this.desc,
  });
  final String title, desc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            //  "Paid On",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: AppColors.cFFFFFF,
            ),
          ),
          Text(
            desc,
            //  "31 Jan 2023, 22:GMT+1",
            style: TextStyle(
              fontFamily: FontFamily.lato,
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: AppColors.cFFFFFF,
            ),
          ),
        ],
      ),
    );
  }
}
