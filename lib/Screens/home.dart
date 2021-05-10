import 'package:flutter/material.dart';
import 'GameScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa0c4ff),
        title: Text(
          "Tic Tac Toe",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: Container(
          width: 380,
          height: 600,
          decoration: BoxDecoration(
            color: Color(0xfffae0e4),
            shape: BoxShape.rectangle,
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "TIC",
                style: TextStyle(
                    fontSize: 49,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0077b6)),
              ),
              Text(
                "TAC",
                style: TextStyle(
                    fontSize: 51,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff023e8a)),
              ),
              Text(
                "TOE",
                style: TextStyle(
                    fontSize: 53,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff03045e)),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  navigate(true);
                },
                child: Container(
                  height: 80,
                  width: 290,
                  decoration: BoxDecoration(
                    color: Color(0xffbcd4e6),
                    border: Border.all(width: 4, color: Colors.black),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Text(
                    "   Single Player  ",
                    style: TextStyle(color: Color(0xff03045e), fontSize: 38),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  navigate(false);
                },
                child: Container(
                  height: 80,
                  width: 290,
                  decoration: BoxDecoration(
                    color: Color(0xffbbd0ff),
                    border: Border.all(width: 4, color: Colors.black),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Text(
                    "   MultiPlayer  ",
                    style: TextStyle(color: Color(0xff723c70), fontSize: 38),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigate(bool isAi) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => GameScreen(
          isAil: isAi,
        ),
      ),
    );
  }
}
