import 'package:flutter/material.dart';

class Competitions {
  final String? nameCompetition;
  final String? imageCompetition;

  Competitions({this.nameCompetition, this.imageCompetition});
  AssetImage get image => AssetImage('assets/$nameCompetition.png');
}
