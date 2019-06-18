import 'package:flutter/material.dart';

enum MyThemeKeys { LIGHT, DARK, DARKER }

class MyThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    buttonColor: Colors.blue,
    iconTheme: IconThemeData(
      color: Colors.blue[900]
    ),
    cardTheme: CardTheme(
      elevation: 10.0
    )
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.pink,
    primaryColor: Colors.pink,
    accentColor: Colors.pinkAccent,
    backgroundColor: Colors.black87,
    brightness: Brightness.dark,
    fontFamily: 'Montserrat',
    inputDecorationTheme: InputDecorationTheme(
      hasFloatingPlaceholder: false,
      border: OutlineInputBorder(),
    ),
    cursorColor: Colors.pink,
    buttonTheme: ButtonThemeData(
        shape: Border(left: BorderSide(width: 10.0, color: Colors.black54))

    ),
      iconTheme: IconThemeData(
          color: Colors.pink[300]
      )
  );

//  static final ThemeData darkerTheme = ThemeData(
//    primaryColor: Colors.black,
//    brightness: Brightness.dark,
//  );

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
//      case MyThemeKeys.DARKER:
//        return darkerTheme;
      default:
        return lightTheme;
    }
  }
}