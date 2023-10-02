import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../utils/colors.dart';
import '../widget/name_icon_widget.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 21.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                Text(
                  "View More",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.c1DC1B4,
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: List.generate(
                4,
                (index) => NameIconWidget(),
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Assets.i
            ],
          ),
        ],
      ),
    );
  }
}
