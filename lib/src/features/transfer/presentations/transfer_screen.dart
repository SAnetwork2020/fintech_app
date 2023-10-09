import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../utils/colors.dart';
import '../widget/name_icon_widget.dart';
import '../widget/send_to_widget.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: List.generate(
                  4,
                  (index) => const NameIconWidget(),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 14.0),
              child: SendToWidget(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Assets.icons.logo.svg(),
                ),
                title: "Send to Payflex account",
                desc: "Send to any Payflex account for free.",
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 14.0),
              child: SendToWidget(
                icon: Assets.images.sendIcon.image(),
                title: "Send to Bank Account",
                desc: "Send to a local bank account.",
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction History",
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ...[
              {
                "title": "Benjamin Martinez",
                "desc": "You sent \$100.00 . 06:44 PM",
                "icon": Assets.images.jonathanDoe.image(),
              },
              {
                "title": "Benjamin Martinez",
                "desc": "You sent \$100.00 . 06:44 PM",
                "icon": Assets.images.gtbank.image(),
              },
              {
                "title": "Benjamin Martinez",
                "desc": "You sent \$100.00 . 06:44 PM",
                "icon": Assets.images.firstbank.image(),
              },
              {
                "title": "Benjamin Martinez",
                "desc": "You sent \$100.00 . 06:44 PM",
                "icon": Assets.images.accessbank.image(),
              },
            ]
                .map(
                  (e) => Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 14.0, bottom: 15),
                    child: SendToWidget(
                      icon: e["icon"],
                      title: e["title"].toString(),
                      desc: e["desc"].toString(),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
