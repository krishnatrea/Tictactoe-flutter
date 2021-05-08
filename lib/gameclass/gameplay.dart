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
  bool isAI = true;
  bool isDraw = false;
  List<double> rotationAngle = [90, 90, 90, 0, 0, 0, -50, 50];
  int rotatingindex;
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

  void haveplay(int i) {
    if (!isclicked[i][0]) {
      isclicked[i][0] = true;
      isclicked[i][1] = player[currentplayer].playerSymbol;
      player[currentplayer].isclicked[i] = true;
      print(player[currentplayer].isclicked);
      setState(() {});
      rotatingindex = player[currentplayer].isWin();
      if (player[currentplayer].isWin() > 0) {
        for (int i = 1; i <= 9; i++) {
          isclicked[i][0] = true;
        }
        gameover = true;
        setState(() {});
      }
      if (howmanyclicked() == 9) {
        isDraw = true;
      }
      toggalplayer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    taped(1);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[1][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[1][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    taped(2);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[2][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[2][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    taped(3);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[3][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[3][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    taped(4);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[4][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[4][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    taped(5);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[5][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[5][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    taped(6);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[6][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[6][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    taped(7);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[7][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[7][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    taped(8);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[8][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[8][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    taped(9);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 40,
                      minRadius: 10,
                      child: isclicked[9][1] == null
                          ? Offstage()
                          : Center(
                              child: Text(
                                isclicked[9][1],
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        gameover
            ? Positioned(
                top: positionNo[rotatingindex - 1][0],
                left: positionNo[rotatingindex - 1][1],
                child: Transform(
                  alignment: FractionalOffset.center,
                  transform: new Matrix4.identity()
                    ..rotateZ(
                        rotationAngle[rotatingindex - 1] * 3.1415927 / 180),
                  child: Container(
                    height: positionNo[rotatingindex - 1][2],
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            : Offstage(),
      ],
    );
  }
}
