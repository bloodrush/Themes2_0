import 'package:themes2_0/custom_theme.dart';
import 'package:themes2_0/home.dart';
import 'package:flutter/material.dart';
import 'package:themes2_0/themes.dart';

void main() {
  runApp(
    CustomTheme(
      initialThemeKey: MyThemeKeys.LIGHT,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic themes demo',
      theme: CustomTheme.of(context),
      home: HomeScreen(),
    );
  }
}