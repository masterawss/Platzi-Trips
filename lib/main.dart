import 'package:flutter/material.dart';
import 'package:platzi_trips_app/platzi_trips.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_app_bar.dart';
import 'button_purple.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final descriptionPlace = """
La Naciente de Tio Yacu, es uno de los lugares más concurridos en el Alto Mayo, 
muchos atribuyen a sus aguas propiedades curativas. 
Tio Yacu nace de entre las rocas en medio de la exhuberante vegetación.

El agua fría de este rio es ideal para revitalizar el cuerpo y activar la circulación sanguínea.
  """;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: PlatziTrips(),
        // body: Stack(
        //   children: <Widget>[
        //     ListView(
        //       children: <Widget>[
        //         DescriptionPlace(descriptionPlace: descriptionPlace,stars: 4, namePlace: 'Tio Yacu'),
        //         ReviewList()
        //       ],
        //     ),
        //     HeaderAppBar(),
        //   ],
        // )
        // Column(
        //   children: <Widget>[
        //     DescriptionPlace(descriptionPlace: description_place,stars: 4, namePlace: 'Tio Yacu'),
        //     ReviewList()
        //   ],
        // )
      )
    );
  }
}

