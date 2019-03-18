import 'package:flutter/material.dart';

import './widgets/colors.dart';

import './screens/start_page.dart';
import './screens/main_page.dart';

class EdukasiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _routes = <String, WidgetBuilder>{
      '/start': (BuildContext context) => StartPage(),
      '/main': (BuildContext context) => MainPage(),
    };

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edukasi',
      home: MainPage(),
      // initialRoute: '/start',
      routes: _routes,
      theme: _eduTheme,
    );
  }
}

final ThemeData _eduTheme = _buildEduTheme();

ThemeData _buildEduTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      primaryColor: eduPrimary,
      buttonColor: eduPrimary,
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: ButtonThemeData(buttonColor: Colors.yellow),
      textTheme: _buildEduTextTheme(base.textTheme)
  );
}

TextTheme _buildEduTextTheme(TextTheme base) {
  return base.apply(
      fontFamily: 'Okomito'
  );
}