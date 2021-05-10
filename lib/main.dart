import 'package:flutter/material.dart';
import 'package:tictactoe/Screens/GameScreen.dart';
import 'package:tictactoe/Screens/home.dart';
import 'theme/theme.dart';
import 'theme/theme2.dart';

void main() {
  runApp(
    MaterialApp(
      // theme: Theme1.base,
      // darkTheme: Theme2.base,
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}
