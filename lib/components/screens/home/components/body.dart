import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantui/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Enable scroll on small device
    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
          HeaderWithSearchBar(size: size)
        ],
      ),
    );
  }
}

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding * 4),
      // Make a header
      height: size.height * 0.2, // Header with height 20% of device
      child: Stack(
        children: <Widget>[
          // Make top Header
          Container(
            height: size.height * 0.2 -27,
            decoration: BoxDecoration(
              color: colorPrimary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              )
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 10 + defaultPadding),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Hello Tama!",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Image.asset("assets/images/logo.png")
                  )
                ],
              ),
            ),
          ),

          // Make a Search Bar
          Positioned(
            // Make the component flow in the center-end of Header
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center, // Make the hint in the middle vertically
              height: 54,
              margin: EdgeInsets.symmetric(horizontal: defaultPadding),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: colorPrimary.withOpacity(0.3)
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: colorPrimary.withOpacity(0.3)
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none
                      ),
                    ),
                  ),

                  SvgPicture.asset("assets/icons/search.svg")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}