import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class AccountLimitsScreen extends StatelessWidget {
  const AccountLimitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
        ),
      ),
      child: Scaffold(
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
