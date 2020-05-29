import 'package:e_book/constants.dart';
import 'package:e_book/screens/details_screen.dart';
import 'package:e_book/widgets/best_of_the_day_card.dart';
import 'package:e_book/widgets/reading_list_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/main_page_bg.png'),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size.height * .1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: 'What are you\nreading'),
                        TextSpan(
                            text: 'today?',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]),
                ),
              ),
              SizedBox(
                height: 34,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReadingListCard(
                      image: 'images/book-1.png',
                      title: 'Crushing & Influence',
                      auth: 'Gary Venchunk',
                      rating: 4.9,
                      pressDetail: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return DetailsScreen()
;                                }));
                      },
                      pressRead: () {},
                    ),
                    ReadingListCard(
                      image: 'images/book-2.png',
                      title: 'Top Ten Business Hacks',
                      auth: 'Herman Joe',
                      rating: 4.9,
                      pressDetail: () {},
                      pressRead: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(text: 'Best of the '),
                            TextSpan(
                                text: 'day',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    BestOfTheDayCard(size: size),
                    RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(text: "Continue "),
                            TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(38.5),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 20),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Crushing & Influence",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("Gary Venchunk",
                                              style: TextStyle(
                                                color: kLightBlackColor,
                                              )),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text("Chapter 7 of 10",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor)),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          )
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      'images/book-1.png',
                                      width: 55,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: size.width * .65,
                              decoration: BoxDecoration(
                                  color: kProgressIndicator,
                                  borderRadius: BorderRadius.circular(7)),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
