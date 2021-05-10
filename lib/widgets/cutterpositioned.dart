import 'package:flutter/material.dart';

Positioned cutterPositioned(
    {double top, double left, double angle, double height}) {
  return Positioned(
    top: top,
    left: left,
    child: Transform(
      alignment: FractionalOffset.center,
      transform: new Matrix4.identity()..rotateZ(angle * 3.1415927 / 180),
      child: Container(
        height: height,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color.fromRGBO(0, 48, 73, 1),
        ),
      ),
    ),
  );
}
