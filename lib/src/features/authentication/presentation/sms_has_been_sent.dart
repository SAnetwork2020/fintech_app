import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class SmsHasBeenSentScreen extends StatelessWidget {
  const SmsHasBeenSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.welcomeBack.provider(),
          // alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
