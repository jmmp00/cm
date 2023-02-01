import 'package:flutter/material.dart';
import 'package:tp2/data/clubs.dart';
import 'package:tp2/screens/forth_screen.dart';
import '../nav_page.dart';
import 'third_screen.dart';

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
                        child: Text(clubName),
                      ),
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
