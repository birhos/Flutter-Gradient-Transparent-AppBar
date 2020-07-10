import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:gradient_transparent_appbar/others/styling.dart';
import 'package:gradient_transparent_appbar/others/sizeConfig.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.safeTop = MediaQuery.of(context).padding.top;
    SizeConfig.safeBottom = MediaQuery.of(context).padding.bottom;
    SizeConfig.safeLeft = MediaQuery.of(context).padding.left;
    SizeConfig.safeRight = MediaQuery.of(context).padding.right;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // ************************** ************************** ************************** **************************
          /// Body

          Padding(
            padding: EdgeInsets.only(
              top: 0.0,
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  for (int index = 0; index < 100; index++) ...[
                    Text(
                      index.toString(),
                    ),
                  ],
                ],
              ),
            ),
          ),

          // ************************** ************************** ************************** **************************
          /// AppBar

          Positioned(
            top: 0,
            left: 0,
            width: MediaQuery.of(context).size.width,
            height: MyAppBarTheme.Height,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: MyAppBarTheme.Blur,
                  sigmaY: MyAppBarTheme.Blur,
                ),
                child: Stack(
                  children: <Widget>[
                    // ************************** **************************
                    /// Status Bar - Siyah

                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 0.0,
                      height: MyAppBarTheme.Height,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.75),
                              Colors.transparent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),

                    // ************************** **************************
                    /// Main AppBar

                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.safeTop,
                        left: SizeConfig.safeLeft,
                        right: SizeConfig.safeRight,
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          // ************************** **************************
                          /// Geriye Dönme Icon

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: MyAppBarTheme.LeftPadding,
                              ),
                              child: GestureDetector(
                                onTap: () async {
                                  //
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: MyAppBarTheme.IconColor,
                                  size: MyAppBarTheme.IconSize,
                                ),
                              ),
                            ),
                          ),

                          // ************************** **************************
                        ],
                      ),
                    ),

                    // ************************** **************************
                  ],
                ),
              ),
            ),
          ),

          // ************************** ************************** ************************** **************************
        ],
      ),
    );
  }
}
