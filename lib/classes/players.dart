import 'package:flutter/material.dart';
import 'package:tp2/classes/clubs.dart';
import 'package:flutter/material.dart';

class Players extends Clubs {
  final String playerName;
  final int age;
  final double? weight;
  final double? height;
  final String? schoolDegree;
  final String? competition;
  final int passport;
  final DateTime data;

  Players({
    clubName,
    required this.playerName,
    required this.age,
    this.weight,
    this.height,
    this.schoolDegree,
    required this.competition,
    required this.passport,
    required this.data,
  }) : super(clubName: clubName, competition: competition);
}
