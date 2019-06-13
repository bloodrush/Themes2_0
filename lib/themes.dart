import 'package:flutter/material.dart';

enum MyThemeKeys { LIGHT, DARK, DARKER }

class MyThemes {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    buttonColor: Colors.blue,
    buttonTheme: ButtonThemeData(splashColor: Colors.pinkAccent),
    iconTheme: IconThemeData(
      color: Colors.blue[900]
    )
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.pink,
    accentColor: Colors.pinkAccent,
    brightness: Brightness.dark,

    inputDecorationTheme: InputDecorationTheme(
      hasFloatingPlaceholder: false,
      border: OutlineInputBorder(),
    ),
    cursorColor: Colors.pink,
    buttonTheme: ButtonThemeData(
        shape: Border(left: BorderSide(width: 5.0, color: Colors.black87))

    )
  );

  static final ThemeData darkerTheme = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
  );

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
      case MyThemeKeys.DARKER:
        return darkerTheme;
      default:
        return lightTheme;
    }
  }
}