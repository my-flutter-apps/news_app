import 'package:news_app/resources/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:news_app/resources/theme/app_colors.dart';

TextStyle textStyleHeader1 = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.w500,
  height: 66.0/40.0,
  fontFamily: AppFonts.inter.name,
);

TextStyle onboardingTitle = const TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
  height: 28.0/20.0,
);

TextStyle onboardingDescription = const TextStyle(
  color: Colors.grey,
);

TextStyle semiBold12TextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w600,
  fontFamily: AppFonts.inter.name,
  height: 1.0,
  color: gray500
);

TextStyle semiBold32TextStyle = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w600,
    fontFamily: AppFonts.inter.name,
    height: 40.0/32.0,
    color: gray900
);

TextStyle regular14TextStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    fontFamily: AppFonts.inter.name,
    height: 20.0/14.0,
    color: gray900
);