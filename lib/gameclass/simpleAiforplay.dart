import 'dart:math';

class AI {
  static int generateFromAI(Map m) {
    Random random = new Random();
    int randomNumber = random.nextInt(100);
    int xo = randomNumber;
    while (m[xo][0]) {
      xo = (9 * xo + 3) % 10;
    }
    return xo;
  }
}
