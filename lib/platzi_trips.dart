import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'perfil_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  @override

  int indexItem = 0;

  final List<Widget> listItems = [
    HomeTrips(),
    SearchTrips(),
    PerfilTrips()
  ];

  void onTapTapped(int item){
    setState(() {
          indexItem = item;
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: listItems[indexItem],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          currentIndex: indexItem,
          onTap: onTapTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('')
            ),
          ],
        ),
      ),
    );
  }
}