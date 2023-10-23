import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';

class SettingsItems extends StatelessWidget {
  const SettingsItems({
    super.key,
    required this.boxColor,
    required this.title,
    this.trailingWidget,
    required this.icon,
    required this.onTap,
    required this.desc,
  });
  final Color boxColor;
  final String title, desc;
  final Widget? trailingWidget, icon;
  final String onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        InkWell(
          onTap: () {
            context.push(onTap);
          },
          child: Container(
            padding: const EdgeInsets.only(left: 15.0, right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 37,
                      height: 37,
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: boxColor,
                        // color: AppColors.c0FE6F3,
                      ),
                      child: icon ?? Assets.icons.bankStatement.svg(),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // "Bank Statement",
                          title,
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: AppColors.cFFFFFF,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          // "Bank Statement",
                          desc,
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColors.cFFFFFF.withOpacity(.6),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(child: trailingWidget),
                    const SizedBox(width: 18),
                    // Assets.icons.arrowRight2.svg(),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: AppColors.cFFFFFF,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 14,
          ),
          child: Divider(
            thickness: 2,
            color: AppColors.cFFFFFF.withOpacity(.6),
          ),
        ),
      ],
    );
  }
}
