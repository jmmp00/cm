import 'package:flutter/material.dart';
import 'package:tp2/data/competitions.dart';
import 'package:tp2/screens/club_classification.dart';
import '../nav_page.dart';

class LeagueScreen extends StatelessWidget {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: competitions.map((e) {
            final String nameCompetition = e.nameCompetition;
            final String imageCompetition = e.imageCompetition;
            return InkWell(
              child: SizedBox(
                height: 100,
                child: Card(
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          child: Image.asset(imageCompetition),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          e.nameCompetition,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ClubClassification(nameCompetition);
                    },
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}