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
  String? _selectedSeason = '2022/2023';
  List<String> _optionsSeason = ['2022/2023', '2021/2022'];

  @override
  Widget build(BuildContext context) {
    List filteredCompetitionClubs = competitionsClubs
        .where((e) => e.nameCompetition == widget.nameCompetition)
        .toList();
    filteredCompetitionClubs.sort((a, b) => b.points.compareTo(a.points));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          width: 150.0,
          child: Image.asset('images/lp.png'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: DropdownButton(
              hint: Text('Select an option'),
              value: _selectedSeason,
              items: _optionsSeason.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedSeason = value;
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: ListView(
                children: filteredCompetitionClubs
                    .where((e) => e.season == _selectedSeason)
                    .map((e) {
                  final String nameCompetition = e.nameCompetition;
                  return Card(
                      child: Row(
                    children: [
                      Container(
                        child: Text(
                          ''' 
                          Nome  : ${e.clubName}
                          Pontos: ${e.points}
      
                          ''',
                        ),
                      ),
                    ],
                  ));
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
