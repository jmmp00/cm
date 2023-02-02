import 'package:flutter/material.dart';
import 'package:tp2/data/players.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Typicons.arrow_left_thick, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Container(
          width: 150.0,
          child: Image.asset('images/lp.png'),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: clubPlayers.map((e) {
            final String playerName = e.playerName;
            return Card(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('images/player.png',
                          height: 80,
                        ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: Image.asset(e.playerImage),
                ),
                Container(
                  child: Text('Nome  : ${e.playerName} \n'
                      'Idade : ${e.age} \n'
                      'Peso : ${e.weight} \n'
                      'Altura : ${e.height}\n'
                      'Contrato : ${e.contract}\n'
                      'Contratação : ${e.data}\n'
                      'Controlo Doping : ${e.dopingControl}\n'),
                ),
              ],
            ));
          }).toList(),
        ),
      ),
    );
  }
}
