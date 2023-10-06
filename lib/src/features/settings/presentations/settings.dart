import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';
import '../widget/setting_items_widget.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 43),
            Container(
              padding: const EdgeInsets.only(left: 19.0),
              child: InkWell(
                onTap: () {
                  // const ProfileRoute().push(context);
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
                            color: AppColors.cFFFFFF,
                          ),
                        ),
                        Text(
                          "Account Details",
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: AppColors.cFFFFFF,
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
            ...settingItems(context)
                .map(
                  (e) => SettingsItems(
                    boxColor: e["boxColor"],
                    title: e["title"],
                    icon: e["icon"],
                    trailingWidget: e["trailingWidget"],
                    onTap: e["onTap"],
                    desc: e["desc"],
                  ),
                )
                .toList(),
            // ListView.separated(
            //   // physics: const NeverScrollableScrollPhysics(),
            //   itemBuilder: (context, index) {
            //     final widgetSettingItems = settingItems(context);
            //     return SettingsItems(
            //       trailingWidget: widgetSettingItems[index]["trailingWidget"],
            //       onTap: widgetSettingItems[index]["onTap"],
            //       icon: widgetSettingItems[index]["icon"],
            //       boxColor: widgetSettingItems[index]["boxColor"],
            //       title: widgetSettingItems[index]["title"],
            //       desc: widgetSettingItems[index]["desc"],
            //     );
            //   },
            //   separatorBuilder: (context, index) => const SizedBox(height: 10),
            //   // Padheight:
            //   itemCount: settingItems(context).length,
            // ),
            const SizedBox(height: 46),
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
            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> settingItems(BuildContext context) => [
      {
        "title": "Bank Statement",
        "desc": "Track your finances. View detailed transaction history.",
        "icon": Assets.icons.bankStatement.svg(),
        "boxColor": AppColors.c0FE6F3.withOpacity(.5),
        // "onTap": context.push("BankStatementScreen"),
        "onTap": () {
          // ref.read(goRouterProvider).push("/settings/bank_statement");
          // const BankStatementRoute().push(context);
        }
      },
      {
        "title": "Saved Cards",
        "desc": "Quick, secure payments. Store your cards for convenience.",
        "icon": Assets.icons.creditCards.svg(),
        "boxColor": AppColors.cCC1BDC.withOpacity(.5),
        "onTap": () {
          // ref.read(goRouterProvider).push("/settings/bank_statement");
          // const SavedCardsRoute().push(context);
        }
      },
      {
        "title": "Beneficiary List",
        "desc": "Easy transfers. Save your payees for swift transactions.",
        "icon": Assets.icons.benficiaryList.svg(),
        "boxColor": AppColors.cDCA61B.withOpacity(.5),
        "onTap": () {
          // ref.read(goRouterProvider).push("/settings/bank_statement");
          // const BeneficiaryListRoute().push(context);
        }
      },
      {
        "title": "Security",
        "desc": "Your protection. We prioritize your financial safety.",
        "icon": Assets.icons.security.svg(width: 20, height: 20),
        "boxColor": AppColors.cFFF503.withOpacity(.5),
        "onTap": () {
          // ref.read(goRouterProvider).push("/settings/bank_statement");
          // const SecurityRoute().push(context);
        }
      },
      {
        "title": "Notifications",
        "desc": "Stay informed. Get updates on your transactions.",
        "icon": Assets.icons.notification.svg(),
        "boxColor": AppColors.c36DC1B.withOpacity(.5),
        "trailingWidget": Text(
          "On",
          style: TextStyle(
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: AppColors.cFFFFFF,
          ),
        ),
      },
      {
        "title": "Language",
        "desc": "your choice. Select your preferred language.",
        "icon": Assets.icons.language.svg(),
        "boxColor": AppColors.c1B3ADC.withOpacity(.5),
        "trailingWidget": Text(
          "English",
          style: TextStyle(
            fontFamily: FontFamily.lato,
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: AppColors.cFFFFFF,
          ),
        ),
      },
      {
        "title": "Account Limits",
        "desc": "How much can you spend and recieve",
        "icon": Assets.icons.accountLimits.svg(),
        "boxColor": AppColors.c430590.withOpacity(.5),
      },
      {
        "title": "Help",
        "desc": "Assistance at hand. Access support and FAQs.",
        "icon": Assets.icons.help.svg(),
        "boxColor": AppColors.cDC1B49.withOpacity(.5),
      },
    ];
