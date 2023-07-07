import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/lighttheme.dart';

late ThemeModel theme;

class ThemeModel {
  final String themename;

  /// colors
  final Color maincolor;
  final Color accentcolor;
  final Color subonmaincolor;
  final Color subonbg;
  final Color scaffoldColor;
  final Color indicatorColor;
  final Color msgbg; // color for message from me
  final Color oppmsgbg; // color for message from 2nd person
  final Color fabbg;

  /// text styles
  final TextStyle head1;
  final TextStyle head2;

  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;

  ThemeModel({
    required this.themename,
    required this.maincolor,
    required this.accentcolor,
    required this.subonmaincolor,
    required this.subonbg,
    required this.scaffoldColor,
    required this.indicatorColor,
    required this.fabbg,
    required this.oppmsgbg,
    required this.msgbg,
    required this.head1,
    required this.head2,
    required this.body1,
    required this.body2,
    required this.body3,
  });
}
