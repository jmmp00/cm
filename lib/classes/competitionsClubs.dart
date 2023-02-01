import 'package:tp2/classes/competitions.dart';

class CompetitionsClubs extends Competitions {
  final String? clubName;
  final int? points;

  CompetitionsClubs(
      {nameCompetition, required this.clubName, required this.points})
      : super(nameCompetition: nameCompetition);
}
