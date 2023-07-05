import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/colors.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

ThemeModel darkTheme = ThemeModel(
  maincolor: darkfg,
  accentcolor: darkgreen,
  subonmaincolor: Colors.white.withAlpha(150),
  scaffoldColor: darkbg,
  indicatorColor: darkgreen,
  head1: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: white,
  ),
  head2: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: white,
  ),
  body1: TextStyle(
    fontSize: 16,
    color: white,
  ),
  body2: TextStyle(
    fontSize: 14,
    color: white,
  ),
);
