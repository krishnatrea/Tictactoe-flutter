import 'package:flutter/material.dart';
import 'package:tictactoe/gameclass/gameplay.dart';

import '../gameclass/gameplay.dart';

class GameScreen extends StatefulWidget {
  final bool isAil;

  const GameScreen({Key key, this.isAil}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState(isAil);
}

class _GameScreenState extends State<GameScreen> {
  final bool isAi;
  _GameScreenState(this.isAi);
  @override
  Widget build(BuildContext context) {
    var gameWidget = GamePlay(isAi: isAi);
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "Tic Tac Toe",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: CircleAvatar(
            maxRadius: 10,
            backgroundColor: Color.fromRGBO(120, 0, 0, 1),
            child: Icon(Icons.chevron_left_sharp),
          ),
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
          child: gameWidget,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(120, 0, 0, 1),
        onPressed: () {
          gameWidget.gameplaystate.reset();
        },
        child: Icon(Icons.refresh_rounded),
      ),
    );
  }
}
