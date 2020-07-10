import 'package:flutter/material.dart';

import 'package:gradient_transparent_appbar/others/sizeConfig.dart';

class MyAppBarTheme {
  MyAppBarTheme._();

  static double LeftPadding = 3.5 * SizeConfig.widthMultiplier;
  static double RightPadding = 3.5 * SizeConfig.widthMultiplier;

  static double Height = (0.1 * SizeConfig.screenWidth) + SizeConfig.safeTop;
  static double Blur = 1.0 * SizeConfig.widthMultiplier;

  static double IconSize = 6.0 * SizeConfig.widthMultiplier;
  static Color IconColor = Colors.black;
}
