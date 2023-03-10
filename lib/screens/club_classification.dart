import 'package:flutter/material.dart';
import 'package:tp2/data/competitionsClub.dart';
import 'package:tp2/data/players.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

class ClubClassification extends StatefulWidget {
  final String nameCompetition;
  const ClubClassification(this.nameCompetition, {super.key});
  @override
  State<ClubClassification> createState() => _ClubClassification();
}

class _ClubClassification extends State<ClubClassification> {
  List competitionClubs = [];
  List competitionPlayers = [];
  int currentPage = 5;
  int counter = 0;
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
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: DropdownButton(
              icon: Icon(Typicons.arrow_sorted_down),
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
                  counter = 0;
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
                  counter++;
                  return Card(
                      child: Row(
                    children: [
                      Text(counter.toString()+'.', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        child: Image.asset(e.clubLogo),
                      ),
                      SizedBox(width: 15),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                            Text('${e.clubName}', style: TextStyle(fontWeight: FontWeight.bold)),
                            Row(
                            children: [
                              Text('Points: ', style: TextStyle(fontWeight: FontWeight.bold)),
                              Text('${e.points}')
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
          ),
        ],
      ),
    );
  }
}
