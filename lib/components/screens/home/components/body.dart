import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantui/components/screens/home/components/header_searchbox.dart';
import 'package:plantui/components/screens/home/components/scroll_card.dart';
import 'package:plantui/components/screens/home/components/scroll_featured.dart';
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
          ScrollCard(),
          SizedBox(height: 30),
          ButtonMore(
            title: "Featured Plants",
            hitButton: () {},
          ),
          ScrollPlant()
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
