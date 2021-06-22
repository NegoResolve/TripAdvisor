import 'package:flutter/material.dart';
import 'package:trip_advisor/models/place.dart';
import 'package:trip_advisor/screens/home/widgets/details.dart';
import 'package:trip_advisor/screens/home/widgets/photos.dart';
import 'package:trip_advisor/style.dart';

class Home extends StatelessWidget {
  final Place _france = Place(
      banner: "assets/images/Banner.jpg",
      capital: "Paris",
      country: "França",
      assessments: 32,
      nationality: "Francesa",
      resume:
          "É impossível não se render aos encantos de Paris, a bela capital francesa é destino turístico frequentado por milhões de pessoas todos os anos. Vibrante, charmosa, romântica, divertida, além de berço da cultura e da arte, a Cidade Luz, como é chamada, possui uma infindável lista de qualidades.",
      photos: [
        "assets/images/foto_1.jpg",
        "assets/images/foto_2.jpg",
        "assets/images/foto_3.jpg",
        "assets/images/foto_4.jpg",
        "assets/images/foto_5.jpg",
        "assets/images/foto_6.jpg",
        "assets/images/foto_7.jpg",
        "assets/images/foto_8.jpg",
        "assets/images/foto_9.jpg"
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.asset(_france.banner),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: Column(
                  children: [
                    Details(_france),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Text(
                        "Conheça As Maravilhas Da Capital ${_france.nationality}",
                        style: TextStyle(
                            color: green,
                            fontSize: 31,
                            fontWeight: FontWeight.w600)),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Text(_france.resume,
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.justify),
                    Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fotos",
                            style: TextStyle(
                                color: green,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Photos(_france.photos),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
