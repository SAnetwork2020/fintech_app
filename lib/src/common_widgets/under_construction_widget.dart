import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';
import '../utils/colors.dart';

class UnderConstruction extends StatelessWidget {
  const UnderConstruction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Container(
      color: AppColors.c000000.withOpacity(.80),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 46.83,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21.0),
            child: InkWell(
                onTap: () => context.pop(),
                child: Assets.icons.backArrow.svg()),
          ),
          const Spacer(),
          Center(child: Assets.images.commingSoon.image()),
          const Spacer(),
        ],
      ),
    ));
  }
}
