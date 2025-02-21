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
  final Color inputBorder;
  final Color inputFill;
  final Color inputPlaceholder;

  AppColors(
      {required this.backgroundColor,
      required this.primaryTextColor,
      required this.secondaryTextColor,
      required this.primaryColor,
      required this.whiteColor,
      required this.blackColor,
      required this.selectedIconColor,
      required this.unselectedIconColor,
      required this.inputFill,
      required this.inputBorder,
      required this.inputPlaceholder});

  // ========================================================
  // Light color theme
  static final lightColors = AppColors(
      whiteColor: const Color(0xffFFFFFF),
      blackColor: const Color(0xff000000),
      backgroundColor: const Color.fromARGB(255, 250, 250, 250),
      primaryColor: const Color.fromRGBO(16, 16, 16, 1),
      primaryTextColor: const Color.fromARGB(255, 0, 0, 0),
      secondaryTextColor: const Color(0xFF777777),
      selectedIconColor: const Color.fromARGB(255, 0, 0, 0),
      unselectedIconColor: const Color.fromARGB(255, 0, 0, 0),
      inputFill: Color(0xff1e1e1e),
      inputBorder: Color.fromRGBO(243, 245, 247, 0.15),
      inputPlaceholder: Color.fromRGBO(71, 71, 71, 1));

  // ========================================================
  // Dark color theme
  static final darkColors = AppColors(
      whiteColor: const Color(0xff000000),
      blackColor: const Color(0xffFFFFFF),
      backgroundColor: const Color.fromARGB(255, 10, 10, 10),
      primaryTextColor: const Color(0xFFF3F5F7),
      secondaryTextColor: const Color(0xFF777777),
      primaryColor: const Color.fromRGBO(15, 15, 15, 1),
      selectedIconColor: const Color(0xFFFFFFFF),
      unselectedIconColor: const Color(0xFF4D4D4D),
      inputFill: Color.fromRGBO(21, 21, 21, 1),
      inputBorder: Color.fromRGBO(243, 245, 247, 0.15),
      inputPlaceholder: Color.fromRGBO(71, 71, 71, 1));
}
