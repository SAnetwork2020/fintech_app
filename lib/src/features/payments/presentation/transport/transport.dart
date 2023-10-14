import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../common_widgets/custom_app_bar.dart';
import '../../../../common_widgets/custom_buttons.dart';
import '../../../../common_widgets/custom_textformfield.dart';
import '../../../../common_widgets/under_construction_widget.dart';
import '../../../../utils/colors.dart';

class TransportScreen extends StatelessWidget {
  const TransportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 40),
              const CustomAppBars(title: "Transport"),
              const SizedBox(height: 56),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Service Provider",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    const ShadowTextFormField(
                      hintText: '',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Package",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    ShadowTextFormField(
                      hintText: '',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone Number",
                      style: TextStyle(
                        color: AppColors.c000000,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                    ShadowTextFormField(
                      hintText: '',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Spacer(),
              CustomGradientButton(
                height: 47,
                width: 345,
                onPressed: () {},
                title: "Next",
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: FontFamily.lato,
                ),
              ),
              const SizedBox(height: 62),
            ],
          ),
          const UnderConstruction(),
        ],
      ),
    );
  }
}
