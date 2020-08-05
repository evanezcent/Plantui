import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantui/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key, 
    this.iconn,
  }) : super(key: key);

  final String iconn;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(defaultPadding * 0.6),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,15),
            blurRadius: 20,
            color: colorPrimary.withOpacity(0.2)
          ),
          BoxShadow(
            offset: Offset(-15,-15),
            blurRadius: 26,
            color: Colors.white
          )
        ]
      ),
      child: SvgPicture.asset(iconn),
    );
  }
}