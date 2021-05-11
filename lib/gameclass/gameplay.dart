import 'dart:math';
import 'package:tictactoe/measurements/measurments.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/gameclass/player.dart';
import 'package:tictactoe/widgets/cutterpositioned.dart';
import 'package:tictactoe/widgets/gridviewinkwell.dart';
import 'package:tictactoe/widgets/textShow.dart';

class GamePlay extends StatefulWidget {
  final gameplaystate = _GameplayState();
  final bool isAi;

  GamePlay({Key key, this.isAi}) : super(key: key);
  @override
  _GameplayState createState() => gameplaystate;
}

class _GameplayState extends State<GamePlay> {
  List<Player> player = [Player("O"), Player("X")];
  int currentplayer = 0;
  bool gameover = false;
  bool isDraw = false;
  int rotatingindex;
  int winner;
  Map<int, List> isclicked = {
    1: [false, null],
    2: [false, null],
    3: [false, null],
    4: [false, null],
    5: [false, null],
    6: [false, null],
    7: [false, null],
    8: [false, null],
    9: [false, null]
  };

  void reset() {
    isclicked = {
      1: [false, null],
      2: [false, null],
      3: [false, null],
      4: [false, null],
      5: [false, null],
      6: [false, null],
      7: [false, null],
      8: [false, null],
      9: [false, null]
    };
    player = [Player("O"), Player("X")];
    currentplayer = 0;
    gameover = false;
    isDraw = false;
    winner = null;
    rotatingindex = null;
    setState(() {});
  }

  void toggalplayer() {
    if (currentplayer == 0) {
      currentplayer = 1;
    } else {
      currentplayer = 0;
    }
  }

  int howmanyclicked() {
    int click = 0;
    for (int i = 1; i <= 9; i++) {
      if (isclicked[i][0]) {
        click++;
      }
    }
    return click;
  }

  int indexbyAI() {
    if (!gameover && !isDraw) {
      var random = new Random();
      var r = random.nextInt(9) + 1;
      for (int i = r; i < 10; i++) {
        if (!isclicked[i][0]) {
          // print(i);
          return i;
        }
        if (i == 9) {
          i = 1;
        }
      }
    }
    return 0;
  }

  void taped(int i) {
    haveplay(i);
    Future.delayed(const Duration(milliseconds: 400), () {
      if (howmanyclicked() != 9) {
        if (widget.isAi) {
          haveplay(indexbyAI());
        }
      }
    });
  }

  void updatethings(int i) {
    isclicked[i][0] = true;
    isclicked[i][1] = player[currentplayer].playerSymbol;
    player[currentplayer].isclicked[i] = true;
    setState(() {});
    rotatingindex = player[currentplayer].isWin();
  }

  void haveplay(int i) {
    if (!isclicked[i][0]) {
      updatethings(i);
      if (rotatingindex > 0) {
        for (int i = 1; i <= 9; i++) {
          isclicked[i][0] = true;
        }
        gameover = true;
        winner = currentplayer;
        setState(() {});
      }

      if (howmanyclicked() == 9 && !gameover) {
        isDraw = true;
      }
      toggalplayer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isDraw
            ? textShow('Game Draw', context)
            : !gameover
                ? textShow(
                    'Player  ${player[currentplayer].playerSymbol}', context)
                : textShow(
                    'Game Over and ${player[winner].playerSymbol} is winner',
                    context),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 300,
          width: 312,
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      gridView(
                          context: context,
                          index: 1,
                          isclicked: isclicked,
                          taped: taped),
                      gridView(
                          context: context,
                          index: 2,
                          isclicked: isclicked,
                          taped: taped),
                      gridView(
                          context: context,
                          index: 3,
                          isclicked: isclicked,
                          taped: taped),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      gridView(
                          context: context,
                          index: 4,
                          isclicked: isclicked,
                          taped: taped),
                      gridView(
                          context: context,
                          index: 5,
                          isclicked: isclicked,
                          taped: taped),
                      gridView(
                          context: context,
                          index: 6,
                          isclicked: isclicked,
                          taped: taped),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      gridView(
                          context: context,
                          index: 7,
                          isclicked: isclicked,
                          taped: taped),
                      gridView(
                          context: context,
                          index: 8,
                          isclicked: isclicked,
                          taped: taped),
                      gridView(
                          context: context,
                          index: 9,
                          isclicked: isclicked,
                          taped: taped),
                    ],
                  ),
                ],
              ),
              cutterPositioned(top: 0, left: 100, angle: 0, height: 300),
              cutterPositioned(top: 0, left: 200, angle: 0, height: 300),
              cutterPositioned(top: -50, left: 150, angle: 90, height: 300),
              cutterPositioned(top: 50, left: 150, angle: 90, height: 300),
              gameover
                  ? cutterPositioned(
                      top: positionNo[rotatingindex - 1][0],
                      left: positionNo[rotatingindex - 1][1],
                      angle: rotationAngle[rotatingindex - 1],
                      height: positionNo[rotatingindex - 1][2],
                    )
                  : Offstage(),
            ],
          ),
        ),
      ],
    );
  }
}
