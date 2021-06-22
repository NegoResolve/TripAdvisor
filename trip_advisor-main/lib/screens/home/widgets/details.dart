import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trip_advisor/models/place.dart';
import 'package:trip_advisor/style.dart';

class Details extends StatelessWidget {
  final Place _france;

  Details(this._france);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(FontAwesomeIcons.mapMarkerAlt, color: gray, size: 19),
        SizedBox(width: 5),
        Text("${_france.capital} - ${_france.country}",
            style: TextStyle(
                color: gray, fontWeight: FontWeight.w600, fontSize: 16)),
        SizedBox(width: 129),
        FaIcon(FontAwesomeIcons.solidStar, color: orange, size: 13),
        SizedBox(width: 5),
        FaIcon(FontAwesomeIcons.solidStar, color: orange, size: 13),
        SizedBox(width: 5),
        FaIcon(FontAwesomeIcons.solidStar, color: orange, size: 13),
        SizedBox(width: 5),
        FaIcon(FontAwesomeIcons.solidStar, color: orange, size: 13),
        SizedBox(width: 5),
        FaIcon(FontAwesomeIcons.solidStar, color: gray, size: 13),
        SizedBox(width: 5),
        Text("${_france.assessments} avaliações",
            style: TextStyle(color: gray, fontWeight: FontWeight.w300))
      ],
    );
  }
}
