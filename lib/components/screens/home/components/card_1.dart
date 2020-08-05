import 'package:flutter/material.dart';
import 'package:plantui/constants.dart';

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
