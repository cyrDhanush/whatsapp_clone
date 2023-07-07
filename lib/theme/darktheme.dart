import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/colors.dart';
import 'package:whatsapp_clone/theme/textstyles.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

ThemeModel darkTheme = ThemeModel(
  themename: 'dark',
  maincolor: darkfg,
  accentcolor: darkgreen,
  subonmaincolor: Colors.white.withAlpha(120),
  subonbg: Colors.white.withAlpha(120),
  scaffoldColor: darkbg,
  indicatorColor: darkgreen,
  msgbg: msggreen,
  oppmsgbg: darkfg,
  fabbg: darkgreen,
  subfab: darkfg,
  head1: head1.copyWith(
    color: white,
  ),
  head2: head2.copyWith(
    color: white,
  ),
  body1: body1.copyWith(
    color: white,
  ),
  body2: body2.copyWith(
    color: white,
  ),
  body3: body3.copyWith(
    color: white,
  ),
  body4: body4.copyWith(
    color: white,
  ),
);
