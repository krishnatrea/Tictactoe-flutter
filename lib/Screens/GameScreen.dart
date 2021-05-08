import 'package:flutter/material.dart';
import 'package:tictactoe/gameclass/gameplay.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tic Tac Toe'),
        ),
        body: GamePlay());
  }
}

