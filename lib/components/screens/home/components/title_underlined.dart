import 'package:flutter/material.dart';
import 'package:plantui/constants.dart';

class TitleUnderlined extends StatelessWidget {
  const TitleUnderlined({
    Key key, this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: colorPrimary.withOpacity(0.1),
            ),
          )
        ],
      ),
    );
  }
}
