import 'package:flutter/material.dart';
import 'second_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Liga Portugal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {

    });
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo à App da Liga Portugal',
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
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                child: Text(
                  'Go to Another Page',
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
