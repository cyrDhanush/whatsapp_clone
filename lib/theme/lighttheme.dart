import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/colors.dart';
import 'package:whatsapp_clone/theme/textstyles.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

ThemeModel lightTheme = ThemeModel(
  themename: 'light',
  maincolor: lightfg,
  accentcolor: whdgreen,
  subonmaincolor: Colors.white,
  subonbg: black.withAlpha(120),
  scaffoldColor: white,
  indicatorColor: white,
  msgbg: whyellow,
  oppmsgbg: white,
  fabbg: lightfg,
  subfab: lightgrey,
  head1: head1.copyWith(
    color: black,
  ),
  head2: head2.copyWith(
    color: black,
  ),
  body1: body1.copyWith(
    color: black,
  ),
  body2: body2.copyWith(
    color: black,
  ),
  body3: body3.copyWith(
    color: black,
  ),
  body4: body4.copyWith(
    color: black,
  ),
);
