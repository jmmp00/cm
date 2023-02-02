import 'package:tp2/classes/competitions.dart';

class CompetitionsClubs extends Competitions {
  final String? clubName;
  final int? points;
  final String? season;
  final String? clubLogo;

  CompetitionsClubs(
      {nameCompetition,
      required this.clubName,
      required this.points,
      required this.season,
      required this.clubLogo})
      : super(nameCompetition: nameCompetition);
}
