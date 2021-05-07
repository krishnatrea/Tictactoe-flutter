class Player {
  String playerSymbol;

  Player(this.playerSymbol);

  Map<int, bool> isclicked = {
    1: false,
    2: false,
    3: false,
    4: false,
    5: false,
    6: false,
    7: false,
    8: false,
    9: false
  };

  bool hasWin = false;
  int isWin() {
    if (isclicked[1] && isclicked[2] && isclicked[3]) {
      hasWin = true;
      return 1;
    } else if (isclicked[4] && isclicked[5] && isclicked[6]) {
      hasWin = true;
      return 2;
    } else if (isclicked[7] && isclicked[8] && isclicked[9]) {
      hasWin = true;
      return 3;
    } else if (isclicked[1] && isclicked[5] && isclicked[9]) {
      hasWin = true;
      return 4;
    } else if (isclicked[7] && isclicked[5] && isclicked[3]) {
      hasWin = true;
      return 5;
    }
    return 0;
  }
}
