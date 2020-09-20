import 'package:flutter/material.dart';

import 'colors_config.dart';

class ThemesConfig {
  static final ThemeData defaultTheme = ThemeData(
    primaryColor: ColorsConfig().darkPurple,
    accentColor: ColorsConfig().lightPurple,
    fontFamily: 'ReemKufi',
    textTheme: themeData.textTheme,
  );
}

final ThemeData themeData = ThemeData(
  textTheme: TextTheme(
    headline1: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.w300, fontSize: 96, letterSpacing: -1.5, color: Colors.white),
    headline2: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.w300, fontSize: 60, letterSpacing: -0.5, color: Colors.white),
    headline3: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.normal, fontSize: 48, color: Colors.white),
    headline4: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.normal, fontSize: 34, color: Colors.white),
    headline5: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.w600, fontSize: 24, color: Colors.white),
    headline6: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.normal, fontSize: 20, letterSpacing: 0.15, color: Colors.white),
    subtitle1: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.normal, fontSize: 16, letterSpacing: 0.15, color: Colors.white),
    subtitle2: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.w500, fontSize: 14, letterSpacing: 0.1, color: Colors.white),
    bodyText1: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.normal, fontSize: 16, letterSpacing: 0.5, color: Colors.white),
    bodyText2: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.normal, fontSize: 14, letterSpacing: 0.25, color: Colors.white),
    button: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.w500, fontSize: 14, letterSpacing: 1.25, color: Colors.white),
    caption: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.normal, fontSize: 12, letterSpacing: 0.4, color: Colors.white),
    overline: TextStyle(fontFamily: 'ReemKufi', fontWeight: FontWeight.w500, fontSize: 10, letterSpacing: 1.5, color: Colors.white),
  ),
);
