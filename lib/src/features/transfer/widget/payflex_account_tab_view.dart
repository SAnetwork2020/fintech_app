import 'package:fintech_app/src/common_widgets/enter_pin_widget.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/custom_app_bar.dart';
import '../../../common_widgets/custom_buttons.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';
import 'confirm_transfer.dart';
import 'transfer_textform_widget.dart';

class PayflexAccountTabView extends StatelessWidget {
  const PayflexAccountTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 22.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Number",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  height: 0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              CustomTextFormField(
                width: 350,
                hintText: "1234567890",
              ),
              Padding(
                padding: const EdgeInsets.only(right: 21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Choose Beneficiary",
                      style: TextStyle(
                        color: AppColors.c1DC1B4,
                        decoration: TextDecoration.underline,
                        height: 0,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 39.62),
        CustomGradientButton(
          width: 345,
          height: 45,
          title: "Confirm Receiver",
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            height: 0,
            color: AppColors.cFFFFFF,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return ConfirmTransferWidget();
              },
            );
            // const TransactionSuccessfulRoute().push(context);
          },
        ),
      ],
    );
  }
}

