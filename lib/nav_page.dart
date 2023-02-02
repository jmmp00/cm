import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

import 'screens/leagues.dart';
import 'screens/teams.dart';
import 'screens/history.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {

  int currentPage = 0;
  List<Widget> pages =  [
    LeagueScreen(),
    TeamsScreen(),
    HistoryScreen(),
  ];

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
        width: 150.0,
        child: Image.asset('images/lp.png'),
        ),
      ),
   
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(destinations: const [  
        NavigationDestination(icon: Icon(Typicons.chart_bar), label: "Classifications"),
        NavigationDestination(icon: Icon(Typicons.group), label: "Teams"),
        NavigationDestination(icon: Icon(Typicons.document_text), label: "Hire History"),
        
      ],
      onDestinationSelected: (int index){
        setState(() {
          currentPage = index;
        });
      },
      selectedIndex: currentPage,
      ),
    );
  } 
}
