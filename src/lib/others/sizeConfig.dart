import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SizeConfig {
  static double screenWidth;
  static double screenHeight;

  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double textMultiplier;
  static double imageSizeMultiplier;

  static double heightMultiplier;
  static double widthMultiplier;

  static bool isPortrait = true;
  static bool isMobilePortrait = false;
  static bool isLargeScreen = false;

  static double safeTop;
  static double safeBottom;
  static double safeLeft;
  static double safeRight;

  void init(BoxConstraints constraints, Orientation orientation) {
    // debugPrint(constraints.maxWidth.toString());

    if (orientation == Orientation.portrait) {
      screenWidth = constraints.maxWidth;
      if(screenWidth > 599){
        screenWidth = screenWidth * 0.60;
        isLargeScreen = true;

        if(screenWidth > 599) screenWidth = 599;
      }

      screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      screenWidth = constraints.maxHeight;
      if(screenWidth > 599){
        screenWidth = screenWidth * 0.60;
        isLargeScreen = true;

        if(screenWidth > 599) screenWidth = 599;
      }

      screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = screenWidth / 100;
    _blockHeight = screenHeight / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;

    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
  }
}
