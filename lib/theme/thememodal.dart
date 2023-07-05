import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/lighttheme.dart';

late ThemeModel theme;

class ThemeModel {
  /// colors
  final Color maincolor;
  final Color accentcolor;
  final Color subonmaincolor;
  final Color scaffoldColor;
  final Color indicatorColor;

  /// text styles
  final TextStyle head1;
  final TextStyle head2;

  final TextStyle body1;
  final TextStyle body2;

  ThemeModel({
    required this.maincolor,
    required this.accentcolor,
    required this.subonmaincolor,
    required this.scaffoldColor,
    required this.indicatorColor,
    required this.head1,
    required this.head2,
    required this.body1,
    required this.body2,
  });
}
