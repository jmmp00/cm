import 'package:flutter/material.dart';
import 'package:tp2/classes/leagues.dart';

class Clubs extends Leagues {
  final String clubName;
  final String? competition;
  final String imageName;

  Clubs(
      {points,
      required this.clubName,
      this.competition,
      required this.imageName})
      : super(points: points);

  AssetImage get image => AssetImage('assets/$imageName.png');
}
