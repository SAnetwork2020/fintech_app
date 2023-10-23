import 'package:fintech_app/src/common_widgets/custom_app_bar.dart';
import 'package:fintech_app/src/common_widgets/custom_buttons.dart';
import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../common_widgets/success_widget.dart';
import '../../../../utils/colors.dart';
import '../../../transfer/presentations/transfer_to_screen.dart';

class BankStatementScreen extends StatelessWidget {
  const BankStatementScreen({super.key});

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
            const CustomAppBars(title: "Request Statement"),
            const SizedBox(height: 41),
            Padding(
              padding: EdgeInsets.only(left: 22.0, right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start Date",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  CustomTextFormField(
                    width: 350,
                    hintText: "DD/MM/YYYY",
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.0, right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "End Date",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  CustomTextFormField(
                    width: 350,
                    hintText: "DD/MM/YYYY",
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.0, right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Choose Format",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.cFFFFFF,
                    ),
                  ),
                  CustomTextFormField(
                    width: 150,
                    hintText: "",
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: CustomGradientButton(
                width: 345,
                height: 46.38,
                title: "Get",
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return SuccessWidget(
                        title: "Your statement has been sent to your email. ",
                        titleStyle: TextStyle(
                          color: AppColors.cFFFFFF,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        onPressed: () {
                          context.pop();
                        },
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
