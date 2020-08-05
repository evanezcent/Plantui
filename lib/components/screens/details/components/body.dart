import 'package:flutter/material.dart';
import 'package:plantui/components/screens/details/components/detail_bar.dart';
import 'package:plantui/components/screens/details/components/image_detail.dart';
import 'package:plantui/constants.dart';

class BodyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageDetail(),
          DetailBar(
            price: 79.9,
            country: "Bandung",
            title: "Flamboyan",
          ),
          SizedBox(height: defaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 78,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20)
                    )
                  ),
                  color: colorPrimary,
                  onPressed: (){},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20,
                      color: colorPrimary
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

