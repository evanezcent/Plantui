import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantui/components/screens/home/components/header_searchbox.dart';
import 'package:plantui/components/screens/home/components/title_underlined.dart';
import 'package:plantui/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          ButtonMore(
            title: "Recomended",
            hitButton: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(
              children: <Widget>[
                CustomCard(
                  img: "assets/images/image_3.png",
                  title: "Flamboyan",
                  country: "Bandung",
                  price: 70.5,
                  pressCard: (){},
                ),
                CustomCard(
                  img: "assets/images/image_1.png",
                  title: "Tulip",
                  country: "Medan",
                  price: 99.9,
                  pressCard: (){},
                ),
                CustomCard(
                  img: "assets/images/image_2.png",
                  title: "Jemani",
                  country: "Surabaya",
                  price: 100.2,
                  pressCard: (){},
                ),
                CustomCard(
                  img: "assets/images/image_3.png",
                  title: "Anggrek",
                  country: "Bandung",
                  price: 249,
                  pressCard: (){},
                ),
                CustomCard(
                  img: "assets/images/image_1.png",
                  title: "Kasturi",
                  country: "Makassar",
                  price: 109.9,
                  pressCard: (){},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key key,
    this.img,
    this.title,
    this.country,
    this.price,
    this.pressCard,
  }) : super(key: key);

  final String img, title, country;
  final double price;
  final Function pressCard;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: defaultPadding,
          bottom: defaultPadding,
          top: defaultPadding / 2),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(img),
          // Box for title card
          GestureDetector(
            onTap: pressCard,
            child: Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        spreadRadius: -5,
                        blurRadius: 10,
                        color: colorPrimary)
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: colorPrimary.withOpacity(0.5)))
                    ]),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: colorPrimary),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonMore extends StatelessWidget {
  const ButtonMore({
    Key key,
    this.title,
    this.hitButton,
  }) : super(key: key);

  final String title;
  final Function hitButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          TitleUnderlined(text: title),
          Spacer(),
          FlatButton(
            color: colorPrimary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: hitButton,
            child: Text(
              "See more",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
