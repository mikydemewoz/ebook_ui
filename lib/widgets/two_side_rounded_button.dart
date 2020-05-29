import 'package:e_book/constants.dart';
import 'package:flutter/material.dart';

class TwosideRoundedButton extends StatelessWidget {
  final double radius;
  final String text;
  final Function press;

  const TwosideRoundedButton({
    Key key,
    this.radius = 29,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radius),
              bottomRight: Radius.circular(radius),
            )),
        child: Text(text, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
