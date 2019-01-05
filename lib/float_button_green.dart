
import 'package:flutter/material.dart';
class FloatButtonGreen extends StatefulWidget {

  bool estado = false;

  FloatButtonGreen({this.estado});
  @override
  _FloatButtonGreenState createState() => _FloatButtonGreenState();
}

class _FloatButtonGreenState extends State<FloatButtonGreen> {
  
  _FloatButtonGreenState();

  void onPressedButton() {

    setState(() {
      widget.estado =! this.widget.estado;
    });

    Scaffold.of(context).showSnackBar(
      SnackBar(content: Text('Ha sido agregado a favoritos'),)
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon( widget.estado ? Icons.favorite : Icons.favorite_border),
      backgroundColor: Colors.green,
      mini: true,
      onPressed: onPressedButton,
    );
  } 
}