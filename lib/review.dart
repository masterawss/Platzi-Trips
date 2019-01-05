import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String nombre;
  final String comentario;
  final String descripcion;
  
  Review({this.pathImage, this.nombre, this.comentario, this.descripcion});

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: EdgeInsets.all(20),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathImage)
        )
      ),
    );

    final description = Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(nombre,style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),),
          ),
          Container(
            child: Text(descripcion,style: TextStyle(color: Colors.grey),),
          ),
          Container(
            child: Text(comentario, style: TextStyle(fontWeight: FontWeight.w900),)
          ),
          
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,

      ),
    );

    return Row(
      children: <Widget>[
        
        photo,
        description
      ],
    );
  }
}
