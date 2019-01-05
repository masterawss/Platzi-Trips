import 'package:flutter/material.dart';
import 'float_button_green.dart';
class CardImage extends StatelessWidget {

  final String pathImage;
  final bool fav;

  CardImage({this.pathImage, this.fav});

  @override
  Widget build(BuildContext context) {

    var card = Container(
      margin: EdgeInsets.only(top: 80, left: 20),
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover,
          image: NetworkImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0, 7)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.2),
      children: <Widget>[
        card,
        FloatButtonGreen(estado: fav,)
      ],  
    );
  }
}