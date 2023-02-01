import 'package:flutter/material.dart';
import 'package:tp2/data/players.dart';
import '../nav_page.dart';

class FourthScreen extends StatefulWidget {
  final String clubName;
  const FourthScreen(this.clubName, {super.key});
  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  List clubPlayers = [];
  List competitionPlayers = [];
  int currentPage = 4;
  @override
  Widget build(BuildContext context) {
    players
        .where((e) => e.clubName == widget.clubName)
        .forEach((i) => clubPlayers.add(i));
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView(
          children: clubPlayers.map((e) {
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
