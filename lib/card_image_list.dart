import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("images/g1.jpg"),
          CardImage("images/g2.jpg"),
          CardImage("images/g3.jpg"),
          CardImage("images/g4.jpg"),
          CardImage("images/g5.jpg"),
          CardImage("images/g6.jpg"),
        ],
      ),
    );
  }
}
