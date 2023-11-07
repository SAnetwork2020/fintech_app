import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_buttons.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';

class BeneficiaryListScreen extends StatelessWidget {
  const BeneficiaryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
        ),
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const CustomAppBars(title: "My Beneficiaries"),
            const SizedBox(height: 36),
            Center(
              child: CustomTextFormField(
                width: 295,
                height: 35,
                radius: 5,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Assets.icons.search.svg(),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ...[
              {
                "icon": Assets.images.gtbank,
                "name": "Olivia Anderson",
                "desc": "GT Bank - 9045562347",
              },
              {
                "icon": Assets.images.gtbank,
                "name": "Olivia Anderson",
                "desc": "GT Bank - 9045562347",
              },
            ]
                .map(
                  (e) => BeneficiaryTemplate(
                    icon: e["icon"],
                    name: e["name"],
                    desc: e["desc"],
                  ),
                )
                .toList(),
            // Expanded(
            //   child: ListView.builder(
            //     padding: EdgeInsets.zero,
            //     itemCount: 8,
            //     itemBuilder: (BuildContext context, int index) {
            //       return const BeneficiaryTemplate(;
            //     },
            //   ),
            // ),
            // const SizedBox(height: 138),
            const Spacer(),
            Center(
              child: CustomGradientButton(
                width: 345,
                height: 47,
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                onPressed: () {
                  // const SelectAddNewCardsRoute().push(context);
                  // context.push(SelectAddNewCardsRoute().location);
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.add.svg(),
                    const SizedBox(width: 84),
                    const Text(
                      "Add Beneficiary",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.lato,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class BeneficiaryTemplate extends StatelessWidget {
  const BeneficiaryTemplate({
    super.key,
    required this.icon,
    required this.name,
    required this.desc,
  });

  final dynamic icon, name, desc;

  List<String> textSplitter(String input) {
    List<String> parts = input.split(" - ");
    if (parts.length == 2) {
      return [parts[0], parts[1]];
    } else {
      return [input, ""];
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> inputText = textSplitter(desc);
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: icon.image(),
                    // Assets.images.gtbank.image(),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        name,
                        // "Daniel Hassan",
                        style: TextStyle(
                          color: AppColors.cFFFFFF,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: inputText[0],
                          // "GT Bank ",
                          style: TextStyle(
                            color: AppColors.cFFFFFF.withOpacity(.5),
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                          children: [
                            TextSpan(
                              text: " - ${inputText[1]}",
                              // text: "- 9045562347",
                              style: const TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              PopupMenuButton<BenOp>(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(maxWidth: 60),
                elevation: 5,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.zero,
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.circular(10),
                  ),
                ),
                color: Colors.white,
                position: PopupMenuPosition.over,
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                      padding: EdgeInsets.zero,
                      height: 35,
                      textStyle: TextStyle(
                        fontFamily: FontFamily.lato,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: AppColors.c000000.withOpacity(.6),
                      ),
                      child: const Center(
                        child: Text(
                          "Edit",
                          // textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const PopupMenuDivider(height: 0),
                    // Divider(),
                    PopupMenuItem(
                      padding: EdgeInsets.zero,
                      height: 35,
                      textStyle: TextStyle(
                        fontFamily: FontFamily.lato,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: AppColors.c000000.withOpacity(.6),
                      ),
                      child: const Center(
                        child: Text(
                          "Delete",
                        ),
                      ),
                    ),
                    const PopupMenuDivider(height: 0),
                    PopupMenuItem(
                      padding: EdgeInsets.zero,
                      height: 35,
                      textStyle: TextStyle(
                        fontFamily: FontFamily.lato,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: AppColors.c000000.withOpacity(.6),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: AppColors.c000000.withOpacity(.6),
                          ),
                        ),
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
          const SizedBox(height: 6),
          SizedBox(
            child: Divider(
              thickness: 2,
              color: AppColors.cFFFFFF.withOpacity(.6),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

enum BenOp { edit, delete, cancel }
