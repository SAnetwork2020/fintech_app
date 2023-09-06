import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 43),
        Container(
          padding: const EdgeInsets.only(left: 19.0),
          child: InkWell(
            onTap: () {
              const ProfileRoute().push(context);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.images.enterPinPfp.image(
                  width: 49,
                  height: 49,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gregory Stones?",
                      style: TextStyle(
                        // fontFamily: FontFamily.lato,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: AppColors.c000000,
                      ),
                    ),
                    Text(
                      "Account Details",
                      style: TextStyle(
                        fontFamily: FontFamily.lato,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: AppColors.c000000,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 70),
                Assets.icons.arrowRight2.svg(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 25),
        Expanded(
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final widgetSettingItems = settingItems(context);
              return SettingsItems(
                trailingWidget: widgetSettingItems[index]["trailingWidget"],
                onTap: widgetSettingItems[index]["onTap"],
                icon: widgetSettingItems[index]["icon"],
                boxColor: widgetSettingItems[index]["boxColor"],
                title: widgetSettingItems[index]["title"],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 25),
            itemCount: settingItems(context).length,
          ),
        ),
        const SizedBox(height: 60),
        Center(
          child: Text(
            "Logout",
            style: TextStyle(
              // fontFamily: FontFamily.lato,
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: AppColors.cE91515,
            ),
          ),
        ),
        const SizedBox(height: 42),
      ],
    );
  }
}

class SettingsItems extends StatelessWidget {
  const SettingsItems({
    super.key,
    required this.boxColor,
    required this.title,
    this.trailingWidget,
    required this.icon,
    this.onTap,
  });
  final Color boxColor;
  final String title;
  final Widget? trailingWidget, icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 15.0, right: 27.08),
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
                Text(
                  // "Bank Statement",
                  title,
                  style: TextStyle(
                    fontFamily: FontFamily.lato,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.c000000,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(child: trailingWidget),
                const SizedBox(width: 18),
                Assets.icons.arrowRight2.svg(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> settingItems(BuildContext context) => [
      {
        "title": "Bank Statement",
        "icon": Assets.icons.bankStatement.svg(),
        "boxColor": AppColors.c0FE6F3.withOpacity(.5),
        // "onTap": context.push("BankStatementScreen"),
        "onTap": () {
          // ref.read(goRouterProvider).push("/settings/bank_statement");
          const BankStatementRoute().push(context);
        }
      },
      {
        "title": "Saved Cards",
        "icon": Assets.icons.creditCards.svg(),
        "boxColor": AppColors.cCC1BDC.withOpacity(.5),
        "onTap": () {
          // ref.read(goRouterProvider).push("/settings/bank_statement");
          const SavedCardsRoute().push(context);
        }
      },
      {
        "title": "Beneficiary List",
        "icon": Assets.icons.benficiaryList.svg(),
        "boxColor": AppColors.cDCA61B.withOpacity(.5),
        "onTap": () {
          // ref.read(goRouterProvider).push("/settings/bank_statement");
          const BeneficiaryListRoute().push(context);
        }
      },
      {
        "title": "Security",
        "icon": Assets.icons.security.svg(width: 20, height: 20),
        "boxColor": AppColors.cFFF503.withOpacity(.5),
        "onTap": () {
          // ref.read(goRouterProvider).push("/settings/bank_statement");
          const SecurityRoute().push(context);
        }
      },
      {
        "title": "Notifications",
        "icon": Assets.icons.notification.svg(),
        "boxColor": AppColors.c36DC1B.withOpacity(.5),
        "trailingWidget": Text(
          "On",
          style: TextStyle(
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: AppColors.c000000.withOpacity(.45),
          ),
        ),
      },
      {
        "title": "Language",
        "icon": Assets.icons.language.svg(),
        "boxColor": AppColors.c1B3ADC.withOpacity(.5),
        "trailingWidget": Text(
          "English",
          style: TextStyle(
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: AppColors.c000000.withOpacity(.45),
          ),
        ),
      },
      {
        "title": "Help",
        "icon": Assets.icons.help.svg(),
        "boxColor": AppColors.cDC1B49.withOpacity(.5),
      },
    ];
