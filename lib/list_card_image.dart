import 'package:flutter/material.dart';
import 'card_image.dart';

class ListCardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(
            pathImage: 'https://media-cdn.tripadvisor.com/media/photo-s/0b/7c/0f/08/vista-de-la-catarata.jpg',
            fav: false,
          ),
          CardImage(
            pathImage: 'http://tarapoto.tours/wp-content/uploads/2016/07/lugares-turisticos-tioyacu-2-1024x768.jpg',
            fav: true,
          ),
          CardImage(
            pathImage: 'http://tarapoto.tours/wp-content/uploads/2016/07/tour-alto-mayo-1-1024x683.jpg',
            fav: false,
          ),
          CardImage(
            pathImage: 'https://media-cdn.tripadvisor.com/media/photo-s/0e/5b/25/6f/espacios-destinados-para.jpg',
            fav: false,
          ),
          CardImage(
            pathImage: 'https://media-cdn.tripadvisor.com/media/photo-s/0e/5b/25/11/duchas-naturales-de-la.jpg',
            fav: false,
          ),
        ],
      )
    );
  }
}