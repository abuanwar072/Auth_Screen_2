import 'package:auth_screen/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RightRoundedTextField extends StatelessWidget {
  final String hint;
  final String svg;
  const RightRoundedTextField({
    this.hint,
    this.svg,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 64,
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: kBlackColor.withOpacity(.16),
            offset: Offset(0, 1),
            blurRadius: 5,
          )
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(hintText: hint),
            ),
          ),
          SvgPicture.asset(
            svg,
            height: 20,
          )
        ],
      ),
    );
  }
}
