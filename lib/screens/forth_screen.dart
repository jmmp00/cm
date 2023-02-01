import 'package:flutter/material.dart';
import 'package:tp2/data/players.dart';
import '../nav_page.dart';

class FourthScreen extends StatelessWidget {
  int currentPage = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 200,
        child: ListView(
          shrinkWrap: true,
          children: players.map((e) {
            final String playerName = e.playerName;
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
                                return FourthScreen();
                              },
                            ),
                          );
                        },
                        child: Image.asset(
                          e.imageName,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        e.clubName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 19),
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
