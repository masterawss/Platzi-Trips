import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_app_bar.dart';
import 'package:platzi_trips_app/review_list.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final descriptionPlace = """
La Naciente de Tio Yacu, es uno de los lugares más concurridos en el Alto Mayo, 
muchos atribuyen a sus aguas propiedades curativas. 
Tio Yacu nace de entre las rocas en medio de la exhuberante vegetación.

El agua fría de este rio es ideal para revitalizar el cuerpo y activar la circulación sanguínea.
  """;
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(descriptionPlace: descriptionPlace,stars: 4, namePlace: 'Tio Yacu'),
            ReviewList()
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}