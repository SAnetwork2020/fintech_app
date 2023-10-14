import 'package:fintech_app/src/common_widgets/custom_buttons.dart';

import 'package:fintech_app/src/common_widgets/pin_widget.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../gen/assets.gen.dart';

import '../../gen/fonts.gen.dart';
import 'custom_app_bar.dart';
import 'success_widget.dart';

class EnterPinWidget extends StatefulWidget {
  const EnterPinWidget({
    super.key,
    required this.title,
    this.desc,
    this.buttonText,
    required this.onPressed, this.child,
  });
  final String title;
  final void Function() onPressed;
  final String? desc, buttonText;
  final Widget? child;
  @override
  State<EnterPinWidget> createState() => _EnterPinWidgetState();
}

class _EnterPinWidgetState extends State<EnterPinWidget> {
  final TextEditingController pinController = TextEditingController();

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
          SizedBox(height: 46.91),
          // SizedBox(height: 53),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CustomAppBars(
              onPressed: () {
                context.pop();
                context.pop();
              },
              title: "",
            ),
          ),
          Spacer(),
          Center(child: Assets.icons.enterPin.svg()),
          SizedBox(height: 16),
          Text(
            "Enter Your PIN",
            style: TextStyle(
              fontFamily: FontFamily.lato,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: AppColors.cFFFFFF,
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            width: 190,
            child: PinWidget(
              pinController: pinController,
              length: 4,
            ),
          ),
          SizedBox(height: 30),
          CustomGradientButton(
            height: 47,
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => widget.child ?? SuccessWidget(
                  title: widget.title,
                  desc: widget.desc,
                  onPressed: widget.onPressed,
                ),
              );
            },
            title: "Confirm",
          ),
          Spacer(),
        ],
      ),
    );
  }
}
