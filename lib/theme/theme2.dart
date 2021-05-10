import 'package:flutter/material.dart';

class Theme2 {
  static final ThemeData base = ThemeData(
    textTheme: TextTheme(
      headline5:
          TextStyle(fontFamily: "Crimson", fontSize: 24, color: Colors.white),
      title: TextStyle(
          fontFamily: "Roboto", fontSize: 22, color: Color(0xff293241)),
      body1: TextStyle(
          fontFamily: "Roboto", fontSize: 20, color: Color(0xff03045e)),
      caption: TextStyle(fontFamily: "Roboto"),
    ),
    primaryColor: Color(0xff284b63),
    iconTheme: IconThemeData(color: Colors.white, size: 20),
    buttonColor: Colors.white,
    tabBarTheme: TabBarTheme(
      labelColor: Color(0xff284b63),
      unselectedLabelColor: Colors.grey,
    ),
    backgroundColor: Colors.black45,
  );
}
