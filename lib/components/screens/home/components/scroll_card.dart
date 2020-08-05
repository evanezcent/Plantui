import 'package:flutter/material.dart';
import 'package:plantui/components/screens/details/detail.dart';
import 'package:plantui/components/screens/home/components/card_1.dart';

class ScrollCard extends StatelessWidget {
  const ScrollCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: Row(
        children: <Widget>[
          CustomCard(
            img: "assets/images/image_3.png",
            title: "Flamboyan",
            country: "Bandung",
            price: 70.5,
            pressCard: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                )
              );
            },
          ),
          CustomCard(
            img: "assets/images/image_1.png",
            title: "Tulip",
            country: "Medan",
            price: 99.9,
            pressCard: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                )
              );
            },
          ),
          CustomCard(
            img: "assets/images/image_2.png",
            title: "Jemani",
            country: "Surabaya",
            price: 100.2,
            pressCard: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                )
              );
            },
          ),
          CustomCard(
            img: "assets/images/image_3.png",
            title: "Anggrek",
            country: "Bandung",
            price: 249,
            pressCard: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                )
              );
            },
          ),
          CustomCard(
            img: "assets/images/image_1.png",
            title: "Kasturi",
            country: "Makassar",
            price: 109.9,
            pressCard: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                )
              );
            },
          ),
        ],
      ),
    );
  }
}