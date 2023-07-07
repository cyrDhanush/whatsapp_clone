import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/screens/chatscreen/chatscreen.dart';
import 'package:whatsapp_clone/screens/mainscreens/homescaffold.dart';
import 'package:whatsapp_clone/theme/darktheme.dart';
import 'package:whatsapp_clone/theme/lighttheme.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Colors.white.withAlpha(0),
  ));
  theme = lightTheme;
  // theme = darkTheme;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: theme.maincolor,
        appBarTheme: AppBarTheme(
          backgroundColor: theme.maincolor,
        ),
        fontFamily: 'helvetica',
        scaffoldBackgroundColor: theme.scaffoldColor,
      ),
      home: HomeScreen(),
      // home: ChatScreen(),
    );
  }
}
