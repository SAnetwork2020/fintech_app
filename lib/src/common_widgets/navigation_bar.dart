import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../utils/colors.dart';

Container navigationBar(void Function(int)? onTap, int currentIndex) {
  return Container(
          height: 71,
          decoration: BoxDecoration(
            color: AppColors.c050017,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            elevation: 0,
            backgroundColor: Colors.transparent,
            // useLegacyColorScheme: false,

            selectedLabelStyle: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              // color: AppColors.c1DC1B4,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 10,
              // color: AppColors.c000000,
              fontWeight: FontWeight.w400,
            ),
            selectedItemColor: AppColors.c1DC1B4,
            unselectedItemColor: AppColors.cFFFFFF,
            onTap: onTap,
            items: [
              BottomNavigationBarItem(
                icon: Assets.icons.home.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.cFFFFFF, BlendMode.srcIn)),
                activeIcon: Assets.icons.home.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.c1DC1B4, BlendMode.srcIn)),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.payment.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.cFFFFFF, BlendMode.srcIn)),
                activeIcon: Assets.icons.payment.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.c1DC1B4, BlendMode.srcIn)),
                label: "Payments",
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.transfer.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.cFFFFFF, BlendMode.srcIn)),
                activeIcon: Assets.icons.transfer.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.c1DC1B4, BlendMode.srcIn)),
                label: "Transfer",
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.support.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.cFFFFFF, BlendMode.srcIn)),
                activeIcon: Assets.icons.support.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.c1DC1B4, BlendMode.srcIn)),
                label: "Support",
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.settings.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.cFFFFFF, BlendMode.srcIn)),
                activeIcon: Assets.icons.settings.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.c1DC1B4, BlendMode.srcIn)),
                label: "Settings",
              ),
            ],
          ),
        );
}
