import 'package:flutter/material.dart';
import 'package:tp2/data/competitionsClub.dart';
import 'package:tp2/data/players.dart';

class FifthScreen extends StatefulWidget {
  final String nameCompetition;
  const FifthScreen(this.nameCompetition, {super.key});
  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  List competitionClubs = [];
  List competitionPlayers = [];
  int currentPage = 5;
  @override
  Widget build(BuildContext context) {
    competitionsClubs
        .where((e) => e.nameCompetition == widget.nameCompetition)
        .forEach((i) => competitionClubs.add(i));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          width: 150.0,
          child: Image.asset('images/lp.png'),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: competitionClubs.map((e) {
            final String playerName = e.playerName;
            return Card(
                child: Row(
              children: [
                Container(
                  child: Text(
                    ''' 
                    Nome  : ${e.playerName}
                    Idade : ${e.age}
                    Peso : ${e.weight}
                    Altura : ${e.height}
                    Clube : ${e.clubName}
                    Contratação : ${e.data}''',
                  ),
                ),
              ],
            ));
          }).toList(),
        ),
      ),
    );
  }
}
