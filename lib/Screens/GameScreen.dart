import 'package:flutter/material.dart';
import 'package:tictactoe/gameclass/gameplay.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  var gamepriview = new GamePlay();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(120, 0, 0, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Center(
                  child: Text('Tic Tac Toe',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 200,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100)),
                      color: Color.fromRGBO(253, 240, 213, 1),
                    ),
                    child: gamepriview,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(120, 0, 0, 1),
        onPressed: () {
          gamepriview.gameplaystate.reset();
        },
        child: Text('Reset'),
      ),
    );
  }
}
