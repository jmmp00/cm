import 'package:flutter/material.dart';
import '../nav_page.dart';

class FirstScreen extends StatelessWidget {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Classifications',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  } 
}