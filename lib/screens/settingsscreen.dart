import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/colors.dart';
import 'package:whatsapp_clone/theme/themehelper.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool darkmode = false;
  getcurrenttheme() async {
    darkmode = await ThemeHelper.getCurrentTheme();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // get current theme
    getcurrenttheme();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: white,
          ),
        ),
        title: Text(
          'Settings',
          style: theme.head1.copyWith(color: white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: theme.maincolor.withAlpha(30),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Text(
              'Dark Theme',
              style: theme.body1,
            ),
            Spacer(),
            Container(
              height: 30,
              width: 60,
              child: FittedBox(
                child: Switch(
                  value: darkmode,
                  onChanged: (change) {
                    print(change);
                    darkmode = change;
                    ThemeHelper.changeThemeto(change);
                    getcurrenttheme();
                    // setState(() {});
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
