import 'package:e_book/constants.dart';
import 'package:e_book/widgets/book_rating.dart';
import 'package:e_book/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFEAEAEA).withOpacity(.45),
                  borderRadius: BorderRadius.circular(29)),
              child: Column(
                children: <Widget>[
                  Text(
                    'New York Time Best For 11th March 2020',
                    style: TextStyle(fontSize: 9, color: kLightBlackColor),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'How To Win \nFriends & Influence',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Gary Venchunk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      BookRating(
                        score: 4.9,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people...",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 10, color: kLightBlackColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset('images/book-3.png', width: size.width * .37),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwosideRoundedButton(
                text: "Read",
                radius: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
