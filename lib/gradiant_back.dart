import 'package:flutter/material.dart';

class GradiantBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFF4268D3),
          Color(0xFF584CD1),
        ])
      ),
      child: Text(
        'Popular',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Monserrat',
          fontWeight: FontWeight.w800
        ),
        
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}