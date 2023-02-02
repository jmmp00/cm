import 'package:tp2/classes/competitions.dart';

class CompetitionsClubs extends Competitions {
  final String? clubName;
  final int? points;
  final String? season;

  CompetitionsClubs(
      {nameCompetition,
      required this.clubName,
      required this.points,
      required this.season})
      : super(nameCompetition: nameCompetition);
}
