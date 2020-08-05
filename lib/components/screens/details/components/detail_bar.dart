import 'package:flutter/material.dart';
import 'package:plantui/constants.dart';
class DetailBar extends StatelessWidget {
  const DetailBar({
    Key key, this.title, this.country, this.price,
  }) : super(key: key);

  final String title, country;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                    color: colorText,
                    fontWeight: FontWeight.bold
                  )
                ),
                TextSpan(
                  text: "$country\n",
                  style: TextStyle(
                    fontSize: 20,
                    color: colorPrimary,
                    fontWeight: FontWeight.w300
                  )
                )
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headline5.copyWith(
              color: colorPrimary
            ),
          )
        ]
      ),
    );
  }
}

