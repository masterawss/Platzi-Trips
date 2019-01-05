import 'package:flutter/material.dart';
import 'package:platzi_trips_app/float_button_green.dart';

class PerfilTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabBar = Container(
        
        child: Row(
          children: <Widget>[
            Text(
              'Perfil',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Spacer(),
            Icon(Icons.settings, color: Colors.white)
          ],
        ));

    final userData = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage('https://cdn3.eyeem.com/thumb/495f84620c2aa423ec052a51c594b1c92e6c12ac-1517797521865/sq/250'),
            fit: BoxFit.cover
          ),
          border: Border.all(
            width: 3,
            color: Colors.white
          )
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Anthony Will Solsol Soplin',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            ),
            Text(
              'masterawss@gmail.com',
              style: TextStyle(
                color: Colors.white.withOpacity(0.3)
              ),
            )
          ],
        ),
      )
    ],);

    final userOptions = Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.bookmark_border,
            color: Colors.indigo,
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.tv,
            color: Colors.indigo,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.add,
            color: Colors.indigo,
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.markunread,
            color: Colors.indigo,
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.person,
            color: Colors.indigo,
          ),
        ),

      ],
    ),
    );

    final gradientBack = Container(
        height: 400,
        
        // padding: EdgeInsets.only(bottom: 50),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple])),
        child: SafeArea(
            top: true,
            child: Container(
              
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  tabBar,
                  userData,
                  userOptions
                ],
              ),
            )));


    return Scaffold(body: Stack(
      children: <Widget>[
        gradientBack,
        Container(
          margin: EdgeInsets.only(top: 250),
          child:ListView(
            children: <Widget>[
              PublicacionItem(
                pathImage: 'http://www.munirioja.gob.pe/views/app/data/source/turismo/atractivos_turisticos/RiojaPeru_gal_144.jpg',
                titulo: 'Rioja - San Martín',
                descripcion: 'Bella y acogedora ciudad de Rioja',
                estado: false,
                footer: 'Steps 123, 123, 123',
              ),
              PublicacionItem(
                pathImage: 'https://www.osiptel.gob.pe/Archivos/notasprensa/moyobamba-osiptel.jpg',
                titulo: 'Moyobamba - San Martín',
                descripcion: 'Bella y acogedora ciudad de Rioja',
                estado: false,
                footer: 'Steps 123, 123, 123',
              ),
              PublicacionItem(
                pathImage: 'http://www.mpsm.gob.pe/imagenes/imgnoti/Np_06-08-2013_P1020763.JPG',
                titulo: 'Tarapoto - San Martín',
                descripcion: 'Bella y acogedora ciudad de Rioja',
                estado: false,
                footer: 'Steps 123, 123, 123',
              ),
            ],
        ),
        )
        
      ],
    ));
  }
}

class PublicacionItem extends StatelessWidget {

  final String pathImage;
  final String titulo;
  final String descripcion;
  final String footer;
  final bool estado;

  PublicacionItem({this.pathImage, this.titulo, this.descripcion, this.footer, this.estado});

  @override
  Widget build(BuildContext context) {
    final publicacionImage = Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        
        image: DecorationImage(image: NetworkImage(pathImage), fit:BoxFit.cover),
        // borderRadius: BorderRadius.circular(20)
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15,
            offset: Offset(0, 7)
          )
        ]
      ),
    );

    final publicacionDescripcion = Container(
        // height: ,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 7)
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              titulo,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                descripcion,
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            ),
            Text(
              footer,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.amber
              ),
            ),
          ],
        ),
      );

    final publicacionCard = Stack(
      alignment: Alignment(0, 1.5),
      children: <Widget>[
        publicacionImage,
        Stack(
          alignment: Alignment(0.9, 1.5),
          children: <Widget>[
            publicacionDescripcion,
            FloatButtonGreen(estado: false,)
          ],
        )
      ],
    );

    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: publicacionCard,
    );

    // return Stack(
    //   children: <Widget>[
    //     publicacionImage,
    //     publicacionDescripcion
    //   ],
    //   // padding: EdgeInsets.only(top: 250),
    //   // child: Column(
    //   //   // alignment: Alignment(0.9, 1.2),
    //   //   children: <Widget>[
    //   //     publicacionImage,
    //   //     publicacionDescripcion
    //   //   ],
    //   // ),
    // );

    
  }
}
