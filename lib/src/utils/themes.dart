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
final DividerTheme dividerTheme = DividerTheme(
  data: DividerThemeData(
    thickness: 2,
    // space: 8,
    // color: Colors.green,
    color: AppColors.cFFFFFF.withOpacity(.6),
  ),
  child: Divider(),
);

final ThemeData themeData = ThemeData(
  // useMaterial3: true,
  // primaryTextTheme: TextTheme(),
  fontFamily: FontFamily.poppins,
  scaffoldBackgroundColor: Colors.transparent,
  dividerTheme: dividerTheme.data,
);
