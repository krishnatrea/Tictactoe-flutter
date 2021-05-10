import 'package:flutter/material.dart';

class Theme1 {
  static final ThemeData base = ThemeData(
    textTheme: TextTheme(
      headline5:
          TextStyle(fontFamily: "Roboto", fontSize: 24, color: Colors.black),
      title: TextStyle(
        fontFamily: "Roboto",
        fontSize: 22,
        color: Color(0xffd6e2e9),
      ),
      body1: TextStyle(
        fontFamily: "Crimson",
        fontSize: 20,
        color: Color(0xfffef9ef),
      ),
      caption: TextStyle(fontFamily: "Roboto"),
      headline1: TextStyle(
        fontFamily: "Crimson",
        fontSize: 50,
        color: Color(0xfffef9ef),
      ),
    ),
    primaryColor: Color(0xffbbd0ff),
    iconTheme: IconThemeData(color: Colors.black, size: 20),
    buttonColor: Colors.white,
    tabBarTheme: TabBarTheme(
      labelColor: Color(0xffd6e2e9),
      unselectedLabelColor: Colors.white60,
    ),
  );
}
