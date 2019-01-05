import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  final String buttonText = 'Navigate';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Navegando'),
          )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.purple
            ]
          )
        ),
        child: Center(
          child:
          Text(buttonText,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white
          ),  
        ),
        )
      ),
    );
  }
}