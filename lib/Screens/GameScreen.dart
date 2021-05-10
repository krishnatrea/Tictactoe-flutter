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
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.exit_to_app_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
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
                    child: GamePlay(
                      isAi: widget.isAil,
                    ),
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
          Navigator.of(context).pop();
        },
        child: Text('Replay'),
      ),
    );
  }
}
