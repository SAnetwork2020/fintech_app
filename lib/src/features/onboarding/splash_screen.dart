import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/assets.gen.dart';
import '../../routing/router.dart';
import '../../utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(bottom: 12, child: Assets.images.splashBg.image()),
        Positioned(
            top: 351,
            width: 391,
            height: 150,
            child: Assets.images.payflex.image()),
        Positioned(right: 0, top: 15, child: Assets.images.splashBg.image()),
        Scaffold(
          backgroundColor: Colors.transparent,
          // backgroundColor: AppColors.c050017,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 391,
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.logo.svg(
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "PAYFLEX",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                        color: AppColors.c1DC1B4,
                      ),
                    ),
                  ],
                ),
              ),
              // Stack(
              //   children: [
              //     Positioned(bottom: 12, child: Assets.images.splashBg.image()),
              //     Positioned(
              //         top: 351,
              //         width: 391,
              //         height: 150,
              //         child: Assets.images.payflex.image()),
              //     Positioned(right: 0, top: 15, child: Assets.images.splashBg.image()),
              // Positioned(
              //   top: 351,
              //   // width: 391,
              //   height: 150,
              //   child:
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
