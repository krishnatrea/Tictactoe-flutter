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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.amber,
              height: 360,
              width: 312,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GamePlay(),
                ],
              ),
            ),
          ],
        ),
      ),
      //
    );
  }
}
