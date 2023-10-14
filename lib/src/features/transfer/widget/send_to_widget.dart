import 'package:fintech_app/src/common_widgets/custom_buttons.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../constants/constants.dart';
import '../../../utils/colors.dart';
import '../../payments/widget/transaction_receipt.dart';

class SendToWidget extends StatelessWidget {
  const SendToWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
    this.onTap,
  });
  final dynamic icon, onTap;
  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            context.push(onTap);
          },
          // onTap: () => context.push(onTap),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 18),
                  icon,
                  const SizedBox(width: 10),
                  // Assets.icons.logo.svg(),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                      Text(
                        desc,
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
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: AppColors.cFFFFFF,
              )
            ],
          ),
        ),
        const SizedBox(height: 5),
        Divider(
          thickness: 2,
          color: AppColors.cFFFFFF.withOpacity(.6),
        ),
      ],
    );
  }
}
