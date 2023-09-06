import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';
import '../../gen/fonts.gen.dart';
import '../utils/colors.dart';

class TransactionSuccessfulScreen extends StatelessWidget {
  const TransactionSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Assets.icons.close.svg()),
                ],
              ),
            ),
            const SizedBox(height: 54),
            Assets.icons.checkMark.svg(
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 54),
            Text(
              "Transaction Successful",
              style: TextStyle(
                color: AppColors.c000000,
                fontWeight: FontWeight.w600,
                fontSize: 27,
              ),
            ),
            Text(
              "You Have Transferred NGN 4000.0 To John Doe",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.c000000,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            Text(
              "Bank:  Opay 3904285468",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.c000000,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 116,
                  height: 42,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        // side: BorderSide(color)
                      ),
                    ),
                    child: Text(
                      "OK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  width: 116,
                  height: 42,
                  decoration: ShapeDecoration(
                    // color: AppColors.cFFFFFF,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    gradient: LinearGradient(
                      begin: const Alignment(0.00, -1.00),
                      end: const Alignment(0, 1),
                      colors: [
                        Color(0xFF1DC1B4), Color(0xFF3E55D2), Color(0x00D9D9D9),
                        // AppColors.c1DC1B4,
                        // AppColors.c3E56D2,
                        // AppColors.cD9D9D9.withOpacity(0),
                      ],
                    ),
                    shadows: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                        color: Color(0x3F000000),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Share",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionFailedScreen extends StatelessWidget {
  const TransactionFailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Assets.icons.close.svg()),
                ],
              ),
            ),
            const SizedBox(height: 54),
            // Assets.icons.checkMark.svg(
            //   width: 50,
            //   height: 50,
            // ),

            Text(
              "!",
                textAlign:TextAlign.center,
              style: TextStyle(
                color: AppColors.cFF0000,
                fontFamily:FontFamily.lato,
                fontWeight: FontWeight.w500,
                fontSize: 80,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Transaction Failed",
              style: TextStyle(
                color: AppColors.c000000,
                fontWeight: FontWeight.w600,
                fontSize: 27,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "An Error Has Caused Your Transaction To Fail.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.c000000,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Please Try Again Later",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.c000000,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: SizedBox(
                width: 116,
                height: 42,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // side: BorderSide(color)
                    ),
                  ),
                  child: Text(
                    "OK",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.c000000,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
