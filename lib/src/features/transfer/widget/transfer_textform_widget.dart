import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/custom_textformfield.dart';
import '../../../utils/colors.dart';

class TransferTextForm extends StatelessWidget {
  const TransferTextForm({
    super.key,
    required this.title,
    this.hintText,
  });
  final String title;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: AppColors.c000000,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Assets.icons.checkMark.svg(),
              ),
            ],
          ),
        ),
        ShadowTextFormField(hintText: hintText),
      ],
    );
  }
}