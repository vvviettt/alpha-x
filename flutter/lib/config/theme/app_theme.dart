import 'dart:ui';

import 'package:alphax/config/theme/colors.dart';
import 'package:alphax/core/constants/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final AppColors chosenColor;

  AppTheme(
    this.chosenColor,
  );

  ThemeData getTheme() {
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
    Size size = view.physicalSize / view.devicePixelRatio;
    return ThemeData(
      fontFamily: fontFamilyName,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: chosenColor.backgroundColor,
          selectedIconTheme: IconThemeData(
            color: chosenColor.selectedIconColor,
          ),
          unselectedIconTheme:
              IconThemeData(color: chosenColor.unselectedIconColor)),
      colorScheme: ColorScheme.fromSeed(
        seedColor: chosenColor.primaryColor,
        background: chosenColor.backgroundColor,
        primary: chosenColor.primaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: chosenColor.backgroundColor,
        foregroundColor: chosenColor.primaryColor,
      ),
      tabBarTheme: TabBarTheme(
        unselectedLabelStyle: TextStyle(
            fontFamily: fontFamilyName,
            color: chosenColor.secondaryTextColor,
            fontSize: 15),
        labelStyle: TextStyle(
            fontFamily: fontFamilyName,
            color: chosenColor.primaryTextColor,
            fontSize: 15),
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 2.0,
            color: chosenColor.primaryTextColor,
          ),
          insets: EdgeInsets.symmetric(horizontal: size.width * 0.3),
        ),
      ),
      textTheme: TextTheme(
        displayMedium: TextStyle(
          color: chosenColor.primaryTextColor,
          fontFamily: fontFamilyName,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(chosenColor.primaryColor),
          foregroundColor:
              WidgetStateProperty.all<Color>(chosenColor.whiteColor),
          textStyle: WidgetStateProperty.all<TextStyle>(
            TextStyle(
              fontFamily: fontFamilyName,
            ),
          ),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all<Color>(chosenColor.primaryColor),
        overlayColor:
            WidgetStateProperty.all<Color>(chosenColor.backgroundColor),
        trackColor: WidgetStateProperty.all<Color>(chosenColor.backgroundColor),
        trackOutlineColor:
            WidgetStateProperty.all<Color>(chosenColor.backgroundColor),
      ),
    );
  }
}
