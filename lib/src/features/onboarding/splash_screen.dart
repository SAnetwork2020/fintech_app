import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../gen/assets.gen.dart';
import '../../routing/router.dart';
import '../../utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Assets.images.icLauncher.provider(),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          // body: Stack(
          //   children: [
          //     Positioned(
          //       // bottom: 12,
          //       top: 215,
          //       left: 6,
          //       width: 150,
          //       height: 500,
          //       child: Assets.images.splashBg.image(),
          //     ),
          //     Positioned(
          //       // top: 15,
          //       bottom: 212,
          //       right: 6,
          //       width: 150,
          //       height: 500,
          //       child: Assets.images.splashBg.image(),
          //     ),
          //     Positioned.fill(
          //         right: 0, left: 0, child: Assets.images.payflex.image()),

          //     // Align(
          //     //     alignment: Alignment.center,
          //     //     child: Assets.images.splashBg.image()),
          //     Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         SizedBox(
          //           width: 391,
          //           height: 150,
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               Assets.icons.logo.svg(
          //                 height: 70,
          //                 width: 70,
          //               ),
          //               const SizedBox(width: 20),
          //               Text(
          //                 "PAYFLEX",
          //                 style: TextStyle(
          //                   fontSize: 50,
          //                   fontWeight: FontWeight.w400,
          //                   color: AppColors.c1DC1B4,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //     // ),
          //   ],
          // ),
          ),
    );
  }
}
