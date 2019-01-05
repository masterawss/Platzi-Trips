import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  final String descriptionPlace;
  final int stars;
  final String namePlace;

  DescriptionPlace({this.descriptionPlace, this.stars, this.namePlace});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      child: Icon(Icons.star, color: Colors.amber),
    );

    final description = Container(
      child: Text(
        descriptionPlace,
        style: TextStyle(fontSize: 15, fontFamily: 'Monserrat'),
      ),
      margin: EdgeInsets.only(left: 20, right: 20),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          child: Text(
            namePlace,
            style: TextStyle(
              fontWeight: FontWeight.w900, 
              fontSize: 30.0,
              fontFamily: 'Monserrat'
            ),
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: titleStars,
          margin: EdgeInsets.only(left: 20, top: 220),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: description,
        ),
         ButtonPurple()
      ],
    );
  }
}
