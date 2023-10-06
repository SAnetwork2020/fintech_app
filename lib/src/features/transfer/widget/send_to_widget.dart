import 'package:flutter/material.dart';

import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';

class SendToWidget extends StatelessWidget {
  const SendToWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
  });
  final dynamic icon;
  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 18),
                icon,
                SizedBox(width: 10),
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
        SizedBox(height: 5),
        Divider(
          thickness: 2,
          color: AppColors.cFFFFFF.withOpacity(.6),
        ),
      ],
    );
  }
}