import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/custom_buttons.dart';
import '../../../utils/colors.dart';

class TransactionReceiptScreen extends StatelessWidget {
  const TransactionReceiptScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Assets.images.homeScreen.provider(),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 46.91,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21.0),
              child: InkWell(
                  onTap: () => context.pop(),
                  child: Assets.icons.backArrow.svg()),
            ),
            Spacer(),
            Center(
              child: Text(
                "Transaction Receipt",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
            Divider(
              thickness: 2,
              indent: 15,
              endIndent: 14,
              color: AppColors.cFFFFFF.withOpacity(.60),
            ),
            SizedBox(height: 37),
            ...[
              {
                "title": "Transaction Date:",
                "desc": "03 Dec 2023, 16:21 GMT+1",
              },
              {
                "title": "Reference Number:",
                "desc": " TRX2023-09-10-67890",
              },
              {
                "title": "Sender: ",
                "desc": "GREGORY STONES",
              },
              {
                "title": "Transaction Amount:",
                "desc": " 1,000NGN",
              },
              {
                "title": "Amount In Words:",
                "desc": " One Thousand Naira Only",
              },
              {
                "title": "Transaction Type:",
                "desc": " To Access Bank",
              },
              {
                "title": "Transaction Type:",
                "desc": " Jenna Monday - 0108011066 - Acces",
              },
              {
                "title": "Account Number:",
                "desc": " 1234567890",
              },
              {
                "title": "Status:",
                "desc": " Successful",
              },
            ]
                .map(
                  (e) => Padding(
                    padding:
                        const EdgeInsets.only(left: 21.0, top: 10, bottom: 10),
                    child: Text.rich(
                      TextSpan(
                        text: e["title"],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: AppColors.c1DC1B4,
                        ),
                        children: [
                          TextSpan(
                            text: e["desc"],
                            style: TextStyle(
                              color: AppColors.cFFFFFF,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
            SizedBox(height: 21),
            CustomGradientButton(
              width: 345,
              height: 47,
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              onPressed: () {},
              title: "Report Transaction",
            ),
            SizedBox(height: 25),
            Center(
              child: CustomWhiteButton(),
            ),
            SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}

