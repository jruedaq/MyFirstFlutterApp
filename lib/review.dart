import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String imagePath;
  String name;
  int reviews;
  int photos;
  String comment;

  Review(this.imagePath, this.name, this.reviews, this.photos, this.comment);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17,
        ),
      ),
    );

    final userComments = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          color: Color(0xFFA3A5A7),
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        reviews.toString() + " reviews - " + photos.toString() + " fotos",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          color: Color(0xFFA3A5A7),
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComments,
      ],
    );

    final img = Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      width: 80,
      height: 88,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );

    return Row(
      children: [
        img,
        userDetails,
      ],
    );
  }
}
