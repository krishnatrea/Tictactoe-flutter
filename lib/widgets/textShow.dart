import 'package:flutter/material.dart';

Container textShow(String str, BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    child: Text(
      str,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline3.copyWith(
            color: Colors.black,
          ),
    ),
  );
}
