import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color deep_orange = Color(0xFFFF6B6B);
  static const Color white = Colors.white;
  static const Color pink = Color(0xFFBBBBBB);
  static const Color blue = Colors.blueAccent;
  static const Color black = Colors.black;
  static const Color red = Color(0xFF414041);
  static Color primary = hexToColor('#53B175');
  static Color lightGrey = Color.fromRGBO(252, 252, 252, 0.7);
  static Color background = hexToColor('#FCFCFC');
  static Color textColor = hexToColor('#030303');
  static Color connectMedia = hexToColor('#828282');
  static Color color7c = hexToColor('#7C7C7C');
  static Color google = Color.fromRGBO(83, 131, 236, 1);
  static Color facebook = Color.fromRGBO(74, 102, 172, 1);
  static Color blur = Color.fromRGBO(254, 254, 254, 0.55);
  static const Color transparent = Colors.transparent;
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
