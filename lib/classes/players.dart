import 'package:tp2/classes/clubs.dart';

class Players extends Clubs {
  final String playerName;
  final int age;
  final double? weight;
  final double? height;
  final String? schoolDegree;
  final String? competition;
  final int passport;
  final DateTime data;

  Players(
      {clubName,
      imageName,
      required this.playerName,
      required this.age,
      this.weight,
      this.height,
      this.schoolDegree,
      required this.competition,
      required this.passport,
      required this.data})
      : super(
            clubName: clubName, imageName: imageName, competition: competition);
}
