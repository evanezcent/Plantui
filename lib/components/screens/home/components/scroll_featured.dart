import 'package:flutter/material.dart';
import 'package:plantui/components/screens/home/components/card_2.dart';

class ScrollPlant extends StatelessWidget {
  const ScrollPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturedPlantCard(
            img: "assets/images/bottom_img_1.png",
            pressCard: () {},
          ),
          FeaturedPlantCard(
            img: "assets/images/bottom_img_2.png",
            pressCard: () {},
          ),
        ],
      ),
    );
  }
}