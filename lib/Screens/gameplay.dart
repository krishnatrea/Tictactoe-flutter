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
      if (player[currentplayer].isWin() > 0) {
        for (int i = 1; i <= 9; i++) {
          isclicked[i][0] = true;
        }
      }
      if (howmanyclicked() == 9) {
        isDraw = true;
      }
      toggalplayer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        taped(1);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    InkWell(
                      onTap: () {
                        taped(2);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    InkWell(
                      onTap: () {
                        taped(3);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        taped(4);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    InkWell(
                      onTap: () {
                        taped(5);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    InkWell(
                      onTap: () {
                        taped(6);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        taped(7);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    InkWell(
                      onTap: () {
                        taped(8);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    InkWell(
                      onTap: () {
                        taped(9);
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
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
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
