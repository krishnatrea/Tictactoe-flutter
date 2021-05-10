import 'package:flutter/material.dart';

 Container textShow(String str, BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(0, 48, 73, 1),
      ),
      child: Text(str,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white,
              )),
    );
  }