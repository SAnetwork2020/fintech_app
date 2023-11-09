import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../gen/fonts.gen.dart';

final Gradient customGradient = LinearGradient(
  begin: const Alignment(-1.00, 0.00),
  end: const Alignment(1, 0),
  colors: [
    AppColors.fromHex("#3E55D2"),
    AppColors.fromHex("#1DC1B4"),
  ],
);

final ThemeData themeData = ThemeData(
  // useMaterial3: true,
  // primaryTextTheme: TextTheme(),
  dividerColor: AppColors.c000000.withOpacity(.60),
  // dividerColor:AppColors.cFFFFFF.withOpacity(.9),
  fontFamily: FontFamily.poppins,
  scaffoldBackgroundColor: Colors.transparent,
);
