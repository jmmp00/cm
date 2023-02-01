import 'package:flutter/material.dart';
import '../nav_page.dart';

class FourthScreen extends StatelessWidget {
  int currentPage = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hire History',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  } 
}