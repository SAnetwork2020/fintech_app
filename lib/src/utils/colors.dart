import 'package:flutter/material.dart';

Map<int, Color> color = {
  50: const Color.fromRGBO(136, 14, 79, .1),
  100: const Color.fromRGBO(136, 14, 79, .2),
  200: const Color.fromRGBO(136, 14, 79, .3),
  300: const Color.fromRGBO(136, 14, 79, .4),
  400: const Color.fromRGBO(136, 14, 79, .5),
  500: const Color.fromRGBO(136, 14, 79, .6),
  600: const Color.fromRGBO(136, 14, 79, .7),
  700: const Color.fromRGBO(136, 14, 79, .8),
  800: const Color.fromRGBO(136, 14, 79, .9),
  900: const Color.fromRGBO(136, 14, 79, 1),
};

class AppColors {
  static MaterialColor c1DC1B4 = fromHex("#1DC1B4");
  static MaterialColor c000000 = fromHex("#000000");
  static MaterialColor c050017 = fromHex("#050017");
  static MaterialColor cFF0000 = fromHex("#FF0000");
  static MaterialColor c716F6F = fromHex("#716F6F");
  static MaterialColor c7B7A7A = fromHex("#7B7A7A");
  static MaterialColor cCACACA = fromHex("#CACACA");
  static MaterialColor cCFCFF4 = fromHex("#CFCFF4");
  static MaterialColor cFFFFFF = fromHex("#FFFFFF");
  static MaterialColor cD9D9D9 = fromHex("#D9D9D9");
  static MaterialColor c701919 = fromHex("#701919");
  static MaterialColor c3E55D2 = fromHex("#3E55D2");
  static MaterialColor cB0B31 = fromHex("#0B0B31");
  static MaterialColor cCC1BDC = fromHex("#CC1BDC");
  static MaterialColor c9D9B9B = fromHex("#9D9B9B");
  static MaterialColor cDCA61B = fromHex("#DCA61B");
  static MaterialColor c5A5A5B = fromHex("#5A5A5B");
  static MaterialColor cFFF503 = fromHex("#FFF503");
  static MaterialColor cDC1B49 = fromHex("#DC1B49");
  static MaterialColor c1B3ADC = fromHex("#1B3ADC");
  static MaterialColor c36DC1B = fromHex("#36DC1B");
  static MaterialColor c0FE6F3 = fromHex("#0FE6F3");
  static MaterialColor cFFDCAB = fromHex("#FFDCAB");
  static MaterialColor cE91515 = fromHex("#E91515");
  static MaterialColor c3E56D2 = fromHex("#3E56D2");
  static MaterialColor c0CF516 = fromHex("#0CF516");
  static MaterialColor c191970 = fromHex("#191970");
  static MaterialColor c232121 = fromHex("#232121");
  static MaterialColor cFDACAC = fromHex("#FDACAC");
  static MaterialColor c121250 = fromHex("#121250");
  static MaterialColor c661010 = fromHex("#661010");

  static MaterialColor fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write("ff");
    buffer.write(hexString.replaceFirst("#", ""));
    return MaterialColor(int.parse(buffer.toString(), radix: 16), color);
  }
}
