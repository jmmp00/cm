import 'package:flutter/material.dart';
import 'package:tp2/data/clubs.dart';
import 'package:tp2/screens/forth_screen.dart';
import '../nav_page.dart';

class SecondScreen extends StatelessWidget {
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 200,
        child: ListView(
          shrinkWrap: true,
          children: clubs.map((e) {
            final String clubName = e.clubName;
            final String imagename = e.imageName;
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
                                return FourthScreen(clubName);
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
