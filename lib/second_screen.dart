import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liga Portugal'),
        leading: Container(
          height: 50.0,
          width: 50.0,
          child: Image.asset(
            'images/lp.png',
            fit: BoxFit.fitHeight,
        ),
    ),
      ),
      body: Center(
        child: Text("This is the second screen"),
      ),
    );
  }
}
