import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../../../common_widgets/custom_app_bar.dart';

class SelectNetworkWidget extends StatelessWidget {
  const SelectNetworkWidget({
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
          SizedBox(height: 53),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: const CustomAppBars(
              title: "Network",
            ),
          ),
          SizedBox(height: 36),
          SizedBox(
            height: 35,
            child: CustomTextFormField(
              prefixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Assets.icons.search.svg(),
              ),
              inputBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColors.c000000.withOpacity(.20),
                ),
              ),
              fillColor: AppColors.cFFFFFF,
            ),
          ),
          SizedBox(height: 40),
          ...[
            {
              "icon": Assets.images.gloB.image(),
              "name": "GLO NG",
              "onTap": "GLO NG",
            },
            {
              "icon": Assets.images.mtn.image(),
              "name": "MTN NG",
              "onTap": "MTN NG",
            },
            {
              "icon": Assets.images.airtel.image(),
              "name": "AIRTEL NG",
              "onTap": "AIRTEL NG",
            },
            {
              "icon": Assets.images.swift.image(),
              "name": "SWIFT NG",
              "onTap": "SWIFT NG",
            },
            {
              "icon": Assets.images.nineMobile.image(),
              "name": "9 MOBILE NG",
              "onTap": "9 MOBILE NG",
            },
            {
              "icon": Assets.images.visafone.image(),
              "name": "VISAFONE",
              "onTap": "VISAFONE",
            },
          ]
              .map(
                (e) => SelectNetworkItemWidget(
                  icon: e["icon"],
                  name: e["name"].toString(),
                  onTap: e["onTap"],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class SelectNetworkItemWidget extends StatelessWidget {
  const SelectNetworkItemWidget({
    super.key,
    required this.icon,
    required this.name,
    this.onTap,
  });
  final String name;
  final dynamic icon, onTap;
  // final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () => context.pop(onTap),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 23.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Assets.images.gloB.image(),
                    icon,
                    SizedBox(width: 10),
                    Text(
                      // "GLO NG",
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppColors.cFFFFFF,
                      ),
                    )
                  ],
                ),
                Assets.icons.keyboardRight.svg()
                //
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        Divider(
          color: AppColors.cFFFFFF.withOpacity(.6),
          thickness: 2,
          indent: 15,
          endIndent: 14,
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
