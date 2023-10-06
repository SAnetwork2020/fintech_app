// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 22),
            CustomTextFormField(
              width: 295,
              height: 35,
              filled: true,
              fillColor: AppColors.cFFFFFF,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Assets.icons.search.svg(),
              ),
              inputBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.c000000.withOpacity(.20),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
                padding: const EdgeInsets.only(left: 26, right: 14.0),
                child: ExpansionPanelList(
                  materialGapSize: 8,
                  expandIconColor: AppColors.cFFFFFF,
                  dividerColor: AppColors.cFFFFFF.withOpacity(.6),
                  expansionCallback: (panelIndex, isExpanded) {
                    setState(() {
                      expansionObjectList[panelIndex].isExpanded = isExpanded;
                    });
                  },
                  children: [
                    ...expansionObjectList
                        .map(
                          (e) => ExpansionPanel(
                            // canTapOnHeader: true,
                            backgroundColor: Colors.transparent,
                            isExpanded: e.isExpanded,
                            headerBuilder: (context, isExpanded) {
                              return ListTile(
                                // contentPadding: EdgeInsets.all(8),
                                title: Text(
                                  e.title,
                                  style: TextStyle(
                                    // fontFamily: FontFamily.lato,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: AppColors.cFFFFFF,
                                  ),
                                ),
                                // trailing: Divider(
                                //   color: AppColors.c000000.withOpacity(.20),
                                // ),
                              );
                            },
                            body: Text(
                              e.detail,
                              style: TextStyle(
                                // fontFamily: FontFamily.lato,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: AppColors.cFFFFFF.withOpacity(.6),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ],
                )
                // ExpansionPanelList(
                //   expandedHeaderPadding: EdgeInsets.zero,
                //   // elevation: 0,
                //   dividerColor: AppColors.c000000.withOpacity(.20),
                //   expansionCallback: (panelIndex, isExpanded) {
                //     setState(() {
                //       // ExpansionObject[panelIndex].isExpanded = !isExpanded;
                //       ExpansionObject[panelIndex].isExpanded = !isExpanded;
                //     });
                //   },
                //   children: List.generate(
                //     ExpansionObject.length,
                //     (index) => ExpansionPanel(
                //       isExpanded: ExpansionObject[index].isExpanded,
                //       backgroundColor: AppColors.cD9D9D9,
                // headerBuilder: (context, isExpanded) => ListTile(
                //   // contentPadding: EdgeInsets.all(8),
                //   title: Text(
                //     ExpansionObject[index].title,
                //     style: TextStyle(
                //       // fontFamily: FontFamily.lato,
                //       fontWeight: FontWeight.w600,
                //       fontSize: 12,
                //       color: AppColors.c000000,
                //     ),
                //   ),
                //   // trailing: Divider(
                //   //   color: AppColors.c000000.withOpacity(.20),
                //   // ),
                // ),
                // body: Text(
                //   ExpansionObject[index].detail,
                //   style: TextStyle(
                //     // fontFamily: FontFamily.lato,
                //     fontWeight: FontWeight.w400,
                //     fontSize: 10,
                //     color: AppColors.c000000,
                //   ),
                // ),
                //     ),
                //   ),
                // ),
                ),
            const SizedBox(height: 35),
            Column(
              children: [
                Text(
                  "Still Have Questions?",
                  style: TextStyle(
                    // fontFamily: FontFamily.lato,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: AppColors.cFFFFFF,
                  ),
                ),
                Text(
                  "Cant find the answer you’re looking for? \nPlease chat with our friendly team.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontFamily.lato,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.cFFFFFF.withOpacity(.7),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: AppColors.c1DC1B4,
                  child: Center(
                    child: Text(
                      "Message Us",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: AppColors.cFFFFFF,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ExpansionObject {
  final String title;
  final String detail;
  bool isExpanded;
  ExpansionObject({
    required this.title,
    required this.detail,
    this.isExpanded = false,
  });
}

List<ExpansionObject> expansionObjectList = [
  ExpansionObject(
    title: "What is Payflex?",
    detail:
        "Payflex is a fintech app that allows you to send money within the UK, \nrequest a Visa card, and make transfers to Nigeria.",
  ),
  ExpansionObject(
    title: "How does billing work?",
    detail:
        "Payflex is a fintech app that allows you to send money within the UK, \nrequest a Visa card, and make transfers to Nigeria.",
  ),
  ExpansionObject(
    title: "How do i change my account email?",
    detail:
        "Payflex is a fintech app that allows you to send money within the UK, \nrequest a Visa card, and make transfers to Nigeria.",
  ),
  ExpansionObject(
    title: "How does spend-save work?",
    detail:
        "Payflex is a fintech app that allows you to send money within the UK, \nrequest a Visa card, and make transfers to Nigeria.",
  ),
  ExpansionObject(
    title: "What fees do you charge",
    detail:
        "Payflex is a fintech app that allows you to send money within the UK, \nrequest a Visa card, and make transfers to Nigeria.",
  ),
  ExpansionObject(
    title: "Can i send money to Canada?",
    detail:
        "Payflex is a fintech app that allows you to send money within the UK, \nrequest a Visa card, and make transfers to Nigeria.",
  ),
  ExpansionObject(
    title: "What are the current restrictions?",
    detail:
        "Payflex is a fintech app that allows you to send money within the UK, \nrequest a Visa card, and make transfers to Nigeria.",
  ),
];
