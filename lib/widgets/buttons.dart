import 'package:auth_screen/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIconButton extends StatelessWidget {
  final String svg;
  final double size;
  const MyIconButton({
    this.svg,
    this.size = 64,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kBlackColor,
      ),
      child: SvgPicture.asset(svg),
    );
  }
}
