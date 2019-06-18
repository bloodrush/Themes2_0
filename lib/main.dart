import 'package:themes2_0/custom_theme.dart';
import 'package:themes2_0/home.dart';
import 'package:flutter/material.dart';
import 'package:themes2_0/themes.dart';
import 'dashboard.dart';

void main() {
  runApp(
    CustomTheme(
      initialThemeKey: MyThemeKeys.LIGHT,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final routes = {
    '/': (context) => HomeScreen(),
//    '/simulation': (context) => SimulationPage(),
    '/dashboard': (context) => Dashboard(),
//    '/form': (context) => FormPage(),
//    '/statements': (context) => StatementsPage(),
//    '/offers': (context) => OffersPage(),
//    '/request': (context) => RequestPage(),
//    '/contacts': (context) => ContactsPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic themes demo',
      theme: CustomTheme.of(context),
      routes: routes,
    );
  }
}