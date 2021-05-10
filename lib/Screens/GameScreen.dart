import 'package:flutter/material.dart';
import 'package:tictactoe/gameclass/gameplay.dart';

import '../gameclass/gameplay.dart';

class GameScreen extends StatefulWidget {
  final bool isAil;

  const GameScreen({Key key, this.isAil}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa0c4ff),
        title: Text(
          "Tic Tac Toe",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: Container(
          height: 600,
          width: 380,
          decoration: BoxDecoration(
            color: Color(0xfffae0e4),
            shape: BoxShape.rectangle,
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: GamePlay(isAi: widget.isAil),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(120, 0, 0, 1),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Replay'),
      ),
    );
  }
}
