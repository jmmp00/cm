import 'package:flutter/material.dart';
import '../nav_page.dart';
import '../data/history.dart';

class HistoryScreen extends StatelessWidget {
int currentPage = 3;
@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
width: double.infinity,
child: ListView(
children: history.map((e) {
return Card(
child: Row(
children: [
Container(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
Text('${e.playerName}' ,
style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
),
Container(
width: 18,
height: 18,
margin: EdgeInsets.only(left: 10),
decoration: BoxDecoration(
shape: BoxShape.rectangle,
image: DecorationImage(
fit: BoxFit.scaleDown,
image: AssetImage(e.imageT),
),
),
)
],
),
Row(
children: [
Text('From: ',
style: TextStyle(fontWeight: FontWeight.bold)),
Text('${e.clubNameFrom}'),
Text(' to: ', style: TextStyle(fontWeight: FontWeight.bold)),
Text('${e.clubNameTo}')
],
),
Row(
children: [
Text('Transfer date: ',
style: TextStyle(fontWeight: FontWeight.bold)),
Text('${e.transferDate}')
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
);
}
}