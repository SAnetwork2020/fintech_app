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
    this.onPressed,
    this.padding,
  });
  final String title;
  final EdgeInsetsGeometry? padding;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    // padding: const EdgeInsets.only(left: 16.0),
    return Row(
      children: [
        Padding(
          padding: padding ?? const EdgeInsets.only(left: 26.47),
          child: InkWell(
            onTap: onPressed ??
                () {
                  context.pop();
                },
            child: Assets.icons.backArrow.svg(),
          ),
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
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
