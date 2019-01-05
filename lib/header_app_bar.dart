import 'package:flutter/material.dart';
import 'gradiant_back.dart';
import 'list_card_image.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradiantBack(),
        ListCardImage()
      ],
    );
  }
}