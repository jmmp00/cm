import 'package:flutter/material.dart';
import 'package:tp2/classes/competitions.dart';

class Clubs extends Competitions {
  final String clubName;
  final String imageName;
  final String? competition;

  Clubs({
    points,
    required this.clubName,
    required this.imageName,
    required this.competition,
  }) : super(points: points);

  AssetImage get image => AssetImage('assets/$imageName.png');
}
