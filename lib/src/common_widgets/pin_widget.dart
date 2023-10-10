
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils/colors.dart';

class PinWidget extends StatelessWidget {
  const PinWidget({
    super.key,
    required this.pinController,
    required this.length,
  });

  final TextEditingController pinController;
  final int length;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(6),
      ],
      autoDisposeControllers: false,
      textStyle: TextStyle(
        color: AppColors.c1DC1B4,
      ),
      controller: pinController,
      showCursor: true,
      obscuringCharacter: "*",
      // obscureText: true,
      cursorColor: AppColors.c1DC1B4,
      // readOnly: true,
      appContext: context,
      length: length,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        activeColor: AppColors.c1DC1B4,
        selectedColor: AppColors.c1DC1B4,
        inactiveColor: AppColors.cFFFFFF.withOpacity(.6),
        fieldWidth: 40,
      ),
      onChanged: (value) {
        // enteredNumber = value;
      },
      onCompleted: (value) {
        // goToHomeScreen();
      },
      onEditingComplete: () {
        // goToHomeScreen();
      },
    );
  }
}