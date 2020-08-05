import 'package:flutter/material.dart';
import 'package:plantui/constants.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key,
    this.img,
    this.pressCard,
  }) : super(key: key);

  final String img;
  final Function pressCard;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: pressCard,
      child: Container(
        margin: EdgeInsets.only(
            left: defaultPadding, top: defaultPadding, bottom: defaultPadding),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
      ),
    );
  }
}