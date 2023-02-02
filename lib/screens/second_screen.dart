import 'package:flutter/material.dart';
import 'package:tp2/classes/clubs.dart';
import 'package:tp2/data/clubs.dart';
import 'package:tp2/screens/forth_screen.dart';
import '../nav_page.dart';

class SecondScreen extends StatelessWidget {
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    final Map<String, List<Clubs>> leagueMap = {};
    for (final club in clubs) {
      final competition = club.competition;
      if (!leagueMap.containsKey(competition)) {
        leagueMap[competition] = [];
      }
      leagueMap[competition]?.add(club);
    }
    final leagues = leagueMap.keys.toList();
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: leagues.length,
          itemBuilder: (context, index) {
            final league = leagues[index];
            final leagueClubs = leagueMap[league];
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  color: Colors.grey[200],
                  child: Text(
                    league,
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                ...leagueClubs!.map((club) {
                  return Card(
                    child: Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return FourthScreen(club.clubName);
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                club.imageName,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              club.clubName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 19),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              ],
            );
          },
        ),
      ),
    );
  }
}
