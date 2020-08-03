import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_flutter_app/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String titleText;
  int starsLength;
  String descriptionText;

  DescriptionPlace(this.titleText, this.starsLength, this.descriptionText);

  @override
  Widget build(BuildContext context) {
    final starHalf = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );
    final starBorder = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );
    final titleStars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),
          child: Text(
            titleText,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            starHalf,
            starBorder,
          ],
        ),
      ],
    );
    final description = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Text(
        descriptionText,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575A),
        ),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        ButtonPurple("Ver más"),
      ],
    );
  }
}
