import 'package:flutter/material.dart';

class AppColors {
  final Color backgroundColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color primaryColor;
  final Color whiteColor;
  final Color blackColor;
  final Color selectedIconColor;
  final Color unselectedIconColor;
  AppColors({
    required this.backgroundColor,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.primaryColor,
    required this.whiteColor,
    required this.blackColor,
    required this.selectedIconColor,
    required this.unselectedIconColor,
  });

  // ========================================================
  // Light color theme
  static final lightColors = AppColors(
    whiteColor: const Color(0xffFFFFFF),
    blackColor: const Color(0xff000000),
    backgroundColor: const Color.fromARGB(255, 250, 250, 250),
    primaryColor: const Color.fromARGB(255, 225, 225, 225),
    primaryTextColor: const Color.fromARGB(255, 0, 0, 0),
    secondaryTextColor: const Color(0xFF777777),
    selectedIconColor: const Color.fromARGB(255, 0, 0, 0),
    unselectedIconColor: const Color.fromARGB(255, 0, 0, 0),
  );

  // ========================================================
  // Dark color theme
  static final darkColors = AppColors(
    whiteColor: const Color(0xff000000),
    blackColor: const Color(0xffFFFFFF),
    backgroundColor: const Color.fromARGB(255, 10, 10, 10),
    primaryTextColor: const Color(0xFFF3F5F7),
    secondaryTextColor: const Color(0xFF777777),
    primaryColor: const Color.fromARGB(13, 255, 255, 255),
    selectedIconColor: const Color(0xFFFFFFFF),
    unselectedIconColor: const Color(0xFF4D4D4D),
  );
}
