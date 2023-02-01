import 'package:flutter/material.dart';

class Clubs {
  final String clubName;
  final String? competition;
  final String imageName;


  Clubs({required this.clubName, this.competition, required this.imageName});
  
  AssetImage get image => AssetImage('assets/$imageName.png');
}
