import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';
import '../utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.onPressed,
  }) : preferredSize = const Size.fromHeight(60);

  @override
  final Size preferredSize;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
      ),
      titleTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: AppColors.cFFFFFF,
      ),
      centerTitle: true,
      // actions: [
      //   IconButton(
      //     onPressed: onPressed,
      //     icon: Assets.icons.menu.svg(),
      //   ),
      // ],
    );
  }
}

class CustomAppBars extends StatelessWidget {
  const CustomAppBars({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    // padding: const EdgeInsets.only(left: 16.0),
    return Row(
      children: [
        IconButton(
            splashRadius: 20,
            onPressed: () {
              context.pop();
            },
            icon: Assets.icons.backArrow.svg()
            //  const Icon(
            //   Icons.arrow_back_rounded,
            //   size: 24.6,
            //   color: Colors.white,
            // ),
            ),
        const Spacer(),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: AppColors.cFFFFFF,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
