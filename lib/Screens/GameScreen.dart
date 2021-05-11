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
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "Tic Tac Toe",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
