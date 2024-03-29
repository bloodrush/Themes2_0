import 'package:flutter/material.dart';

enum MyThemeKeys { LIGHT, DARK, DARKER }

class MyThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    backgroundColor: Colors.white,
    primaryColorLight: Colors.blue[100],
    primaryColorDark: Colors.blue[900],
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
    primaryColorDark: Colors.pink[900],
    primaryColorLight: Colors.pinkAccent[100],
    accentColor: Colors.pinkAccent,
    backgroundColor: Colors.black87,
    brightness: Brightness.dark,
    fontFamily: 'Montserrat',
    inputDecorationTheme: InputDecorationTheme(
      hasFloatingPlaceholder: false,
      border: OutlineInputBorder(),
    ),
    cursorColor: Colors.pinkAccent,
    buttonTheme: ButtonThemeData(
        shape: Border(left: BorderSide(width: 10.0, color: Colors.black54))

    ),
      iconTheme: IconThemeData(
          color: Colors.pinkAccent[300]
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