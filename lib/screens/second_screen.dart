import 'package:flutter/material.dart';
import '../nav_page.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Teams',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ElevatedButton(
                 onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                  );
                },
                child: Text(
                  '2Go to Another 3 Page',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                 ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } 
}