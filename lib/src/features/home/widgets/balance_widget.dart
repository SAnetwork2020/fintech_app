import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../presentation/home.dart';

class UserBalanceWidget extends StatelessWidget {
  const UserBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
    );
  }
}
