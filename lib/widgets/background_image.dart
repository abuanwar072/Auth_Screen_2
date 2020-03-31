import 'package:auth_screen/constants.dart';
import 'package:flutter/material.dart';

Stack backgroundImage() {
  return Stack(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kPrimaryColor, kWhiteColor],
          ),
        ),
      ),
      Positioned(
        right: 0,
        left: 0,
        bottom: 0,
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ],
  );
}
