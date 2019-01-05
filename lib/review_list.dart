import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                Review(
                  pathImage: 'https://scontent.flim10-1.fna.fbcdn.net/v/t1.0-9/30728812_571520376549736_4890424804617748480_n.jpg?_nc_cat=102&_nc_ht=scontent.flim10-1.fna&oh=03bd413c5bf0cc3470d7c440730af65c&oe=5CD7FF35', 
                  nombre: 'Elder Culqui Guzmán', 
                  descripcion: '2 review - 5 photos', 
                  comentario: 'Fantástico lugar, me encantó.',
                ),
                Review(
                  pathImage: 'https://scontent.flim10-1.fna.fbcdn.net/v/t1.0-9/48395444_1832040743573662_125110438827393024_o.jpg?_nc_cat=105&_nc_ht=scontent.flim10-1.fna&oh=4672f1281bf19c2774b628ae5812d2c0&oe=5CC52323', 
                  nombre: 'Marilyn Sthepanie Maldonado', 
                  descripcion: '3 review - 9 photos', 
                  comentario: 'Recomendado, buen lugar.',
                ),
                Review(
                  pathImage: 'https://scontent.flim10-1.fna.fbcdn.net/v/t1.0-0/p206x206/16864974_1156768877774024_5300778572612791396_n.jpg?_nc_cat=101&_nc_ht=scontent.flim10-1.fna&oh=16dc75314f348bff30f80480f3ebd67b&oe=5CD5FC69', 
                  nombre: 'Anthony Will Solsol Soplin', 
                  descripcion: '3 review - 4 photos', 
                  comentario: 'El lugar es único en la selva.',
                ),
                Review(
                  pathImage: 'https://scontent.flim10-1.fna.fbcdn.net/v/t31.0-8/21273138_1439099616205176_6848476231196804151_o.jpg?_nc_cat=109&_nc_ht=scontent.flim10-1.fna&oh=eef5ccc31bde74bbafff679afb0bd5cd&oe=5CCA2246', 
                  nombre: 'Renne Arenas Santa María', 
                  descripcion: '1 review - 2 photos', 
                  comentario: 'Muy buen sitio, visiten la selva.',
                ),

              ],
            );
  }
}