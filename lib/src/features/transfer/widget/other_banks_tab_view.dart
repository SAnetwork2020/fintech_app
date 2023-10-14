import 'package:fintech_app/src/common_widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/custom_buttons.dart';
import '../../../utils/colors.dart';
import 'confirm_transfer.dart';
import 'payflex_account_tab_view.dart';
import 'transfer_textform_widget.dart';

class OtherBanksTabView extends StatefulWidget {
  const OtherBanksTabView({
    super.key,
  });

  @override
  State<OtherBanksTabView> createState() => _OtherBanksTabViewState();
}

class _OtherBanksTabViewState extends State<OtherBanksTabView> {
  bool beneficiary = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 39),

        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank Name",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  height: 0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              CustomTextFormField(
                width: 170,
                hintText: "Access",
              ),
            ],
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
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
                hintText: "e.g. 1234567890",
              ),
            ],
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account Name",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  height: 0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              CustomTextFormField(
                width: 350,
                hintText: "e.g. John Doe",
              ),
            ],
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Amount",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  height: 0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              CustomTextFormField(
                width: 350,
                hintText: "0,000.0",
              ),
            ],
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Narration",
                style: TextStyle(
                  color: AppColors.cFFFFFF,
                  height: 0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              CustomTextFormField(
                width: 350,
                hintText: "Enter message here...",
              ),
              Padding(
                padding: const EdgeInsets.only(right: 21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "14 characters max",
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Save as beneficiary",
                      style: TextStyle(
                        color: AppColors.cFFFFFF,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Switch.adaptive(
                      thumbColor: MaterialStatePropertyAll(AppColors.c1DC1B4),
                      trackColor: MaterialStatePropertyAll(AppColors.cFFFFFF),
                      value: beneficiary,
                      onChanged: (value) {
                        setState(() {
                          beneficiary = !value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // CustomGradientButton()
        // const SizedBox(height: 39.62),
        CustomGradientButton(
          width: 345,
          height: 45,
          title: "Transfer",
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
            // const TransactionFailedRoute().push(context);
          },
        ),
      ],
    );
  }
}
