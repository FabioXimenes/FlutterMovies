import 'package:flutter/material.dart';

class ThemeStyle {
  static final darkTheme = ThemeData.dark().copyWith(
    backgroundColor: const Color(0xFF000000),
    cardColor: const Color.fromRGBO(158, 158, 157, 1),
    primaryColor: Colors.black,
    appBarTheme: AppBarTheme(color: const Color(0xFF000000)),
    scaffoldBackgroundColor: Color.fromRGBO(20, 21, 23, 1),
    accentColor: Colors.yellow,
    primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
    unselectedWidgetColor: Colors.yellow
  );

  // TODO - Add light theme
  // static final lightTheme = ThemeData.light().copyWith(
  //   backgroundColor: const Color(0xFF000000),
  //   cardColor: const Color.fromRGBO(158, 158, 157, 1),
  //   primaryColor: Colors.black,
  //   appBarTheme: AppBarTheme(color: const Color(0xFF000000)),
  //   scaffoldBackgroundColor: Color(0xFFFFFFFF),
  // );
}
