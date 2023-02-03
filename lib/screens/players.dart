import 'package:flutter/material.dart';
import 'package:tp2/data/players.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

import 'addplayer.dart';

class PlayerScreen extends StatefulWidget {
  final String clubName;
  const PlayerScreen(this.clubName, {super.key});
  @override
  State<PlayerScreen> createState() => _PlayerScreen();
}

class _PlayerScreen extends State<PlayerScreen> {
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
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => addPlayer(widget.clubName)),
        );
      },
        child: Icon(Typicons.plus),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: clubPlayers.map((e) {
            final String playerName = e.playerName;
            //para saber a diferença entre a data de incio e termino de contrato
            final DateTime dateOne = e.contractEnd;
            final DateTime dateTwo = e.contractBegin;
            final Duration duration = dateOne.difference(dateTwo);
            //para saber à quanto tempo (em dias) o teste anti-doping foi realizado
            final DateTime dateThree = e.dopingControl;
            final DateTime dateFour = DateTime.now();
            final Duration doping = dateFour.difference(dateThree);
            return Card(
                child: Row(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  child: Image.asset(e.playerImage),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Name: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(e.playerName)
                        ],
                      ),
                      Row(
                        children: [
                          Text('Age: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${e.age}')
                        ],
                      ),
                      Row(
                        children: [
                          Text('Weight: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${e.weight}kg')
                        ],
                      ),
                      Row(
                        children: [
                          Text('Height: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${e.height}m')
                        ],
                      ),
                      Row(
                        children: [
                          Text('Contract: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${duration.inDays} days left'),
                          duration.inDays <= 182
                              ? Text(
                                  ' - Time to Renew!',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )
                              : Container()
                        ],
                      ),
                      Row(
                        children: [
                          Text('Last Doping Exam: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('${doping.inDays} days ago')
                        ],
                      ),
                    ],
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
