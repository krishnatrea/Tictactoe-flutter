import 'package:flutter/material.dart';
import 'package:tictactoe/gameclass/player.dart';

class GamePlay extends StatefulWidget {
  @override
  _GameplayState createState() => _GameplayState();
}

class _GameplayState extends State<GamePlay> {
  List<Player> player = [Player("O"), Player("X")];
  int currentplayer = 0;
  bool gameover = false;
  bool isDraw = false;
  List<double> rotationAngle = [90, 90, 90, 0, 0, 0, -50, 50];
  int rotatingindex;
  int winner;
  List<List<double>> positionNo = [
    [-95, 147.0, 285.0],
    [0.0, 147.0, 285.0],
    [96, 147.0, 285.0],
    [4.0, 44.0, 285.0],
    [4.0, 147.0, 285.0],
    [4.0, 248.5, 285.0],
    [-35.0, 150.35, 360.0],
    [-35.0, 150.35, 360.0]
  ];
  void toggalplayer() {
    if (currentplayer == 0) {
      currentplayer = 1;
    } else {
      currentplayer = 0;
    }
  }

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

  int howmanyclicked() {
    int click = 0;
    for (int i = 1; i <= 9; i++) {
      if (isclicked[i][0]) {
        click++;
      }
    }
    return click;
  }

  void taped(int i) {
    haveplay(i);
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

  Positioned cutterPositioned() {
    return Positioned(
      top: positionNo[rotatingindex - 1][0],
      left: positionNo[rotatingindex - 1][1],
      child: Transform(
        alignment: FractionalOffset.center,
        transform: new Matrix4.identity()
          ..rotateZ(rotationAngle[rotatingindex - 1] * 3.1415927 / 180),
        child: Container(
          height: positionNo[rotatingindex - 1][2],
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  InkWell gridView(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        taped(index);
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: CircleAvatar(
          backgroundColor: Colors.red,
          maxRadius: 40,
          minRadius: 10,
          child: isclicked[index][1] == null
              ? Offstage()
              : Center(
                  child: Text(
                    isclicked[index][1],
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isDraw
              ? textShow('Game Draw')
              : !gameover
                  ? textShow('Player  ${player[currentplayer].playerSymbol}')
                  : textShow(
                      'Game Over and ${player[winner].playerSymbol} is win'),
          Container(
            height: 360,
            width: 312,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            gridView(context, 1),
                            gridView(context, 2),
                            gridView(context, 3),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            gridView(context, 4),
                            gridView(context, 5),
                            gridView(context, 6),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            gridView(context, 7),
                            gridView(context, 8),
                            gridView(context, 9),
                          ],
                        ),
                      ],
                    ),
                    gameover ? cutterPositioned() : Offstage(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

Container textShow(String str) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.yellow,
      ),
      child: Text(str,
          style: Theme.of(context).textTheme.headline3.copyWith(
                color: Colors.black,
              )),
    );
  }
}
