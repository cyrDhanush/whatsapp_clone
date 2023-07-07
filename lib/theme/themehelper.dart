import 'package:restart_app/restart_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsapp_clone/theme/darktheme.dart';
import 'package:whatsapp_clone/theme/lighttheme.dart';
import 'package:whatsapp_clone/theme/thememodal.dart';

/// theme helper

class ThemeHelper {
  static initialize() async {
    bool isdark = await ThemeHelper.getCurrentTheme();
    if (isdark == true)
      theme = darkTheme;
    else
      theme = lightTheme;

    // changing theme in shared preferences
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('darktheme', isdark);
  }

  static getCurrentTheme() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? darktheme = pref.get('darktheme') as bool?;
    if (darktheme == null) {
      pref.setBool('darktheme', false);
      return false;
    } else {
      return darktheme;
    }
  }

  static changeThemeto(bool isdark) async {
    // changing theme for local use
    if (isdark == true)
      theme = darkTheme;
    else
      theme = lightTheme;

    // changing theme in shared preferences
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('darktheme', isdark);

    // restarting the app
    Restart.restartApp();
  }
}
