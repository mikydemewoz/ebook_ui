import 'package:e_book/constants.dart';
import 'package:e_book/welcome_screen.dart';
import 'package:e_book/widgets/book_rating.dart';
import 'package:e_book/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height * .5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/bg.png'),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * .1,
                        ),
                        BookInfo()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .5),
                  child: Column(
                    children: <Widget>[
                      ChapterCard(
                        chapterNumber: 1,
                        press: () {},
                        name: "Money",
                        tag: "Life is about change",
                      ),
                      ChapterCard(
                        chapterNumber: 2,
                        press: () {},
                        name: "Power",
                        tag: "Everything loves power",
                      ),
                      ChapterCard(
                        chapterNumber: 3,
                        press: () {},
                        name: "Influence",
                        tag: "Influence easily like ",
                      ),
                      ChapterCard(
                        chapterNumber: 4,
                        press: () {},
                        name: "Win",
                        tag: "Winning is what matters",
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;

  const ChapterCard({
    Key key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 8,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 33,
                color: Color(0xFFD3D3D3).withOpacity(.84))
          ]),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Chapter $chapterNumber : $name\n",
                  style: TextStyle(
                      fontSize: 16,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: tag, style: TextStyle(color: kLightBlackColor)),
            ]),
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
            onPressed: press,
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Crushing &", style: Theme.of(context).textTheme.headline6),
              Text(
                "Influence",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                          maxLines: 5,
                          style:
                              TextStyle(fontSize: 10, color: kLightBlackColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RoundedButton(
                          text: "Read",
                          verticalPadding: 2,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(score: 4.9),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'images/book-1.png',
          height: 200,
        ),
      ],
    );
  }
}
