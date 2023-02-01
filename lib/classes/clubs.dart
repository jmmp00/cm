import 'package:flutter/material.dart';
import 'package:tp2/classes/competitions.dart';

class Clubs {
  final String clubName;
  final String imageName;
  final String? competition;

  Clubs({
    required this.clubName,
    required this.imageName,
    required this.competition,
  });

  AssetImage get image => AssetImage('assets/$imageName.png');
}
