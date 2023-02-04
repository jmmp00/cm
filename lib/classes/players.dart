import 'package:flutter/material.dart';
import 'package:tp2/classes/clubs.dart';
import 'package:flutter/material.dart';

class Players extends Clubs {
  final String playerName;
  final String playerImage;
  final int age;
  final double? weight;
  final double? height;
  final String? schoolDegree;
  final String? competition;
  final DateTime dopingControl;
  final DateTime contractEnd;
  final String passport;
  final DateTime contractBegin;

  Players({
    clubName,
    imageName,
    required this.playerImage,
    required this.playerName,
    required this.age,
    this.weight,
    this.height,
    this.schoolDegree,
    required this.competition,
    required this.passport,
    required this.contractBegin,
    required this.contractEnd,
    required this.dopingControl,
  }) : super(
            clubName: clubName, competition: competition, imageName: imageName);
}
