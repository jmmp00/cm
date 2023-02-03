import 'package:flutter/material.dart';
import 'package:tp2/data/players.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

import '../classes/players.dart';

class addPlayer extends StatefulWidget {
  final String clubName;
 
  const addPlayer(this.clubName, {super.key});
  @override
  State<addPlayer> createState() => _addPlayer();
}

class _addPlayer extends State<addPlayer> {
  final _formKey = GlobalKey<FormState>();
  final _playerNameController = TextEditingController();
  final _ageController = TextEditingController();
  final _weightController = TextEditingController();
  final _passportController = TextEditingController();
  final _heightController = TextEditingController();
  final _contractBeginController = TextEditingController();
  final _contractEndController = TextEditingController();
  final _dopingControlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Typicons.arrow_left_thick, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Add New Player'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _playerNameController,
                decoration: InputDecoration(labelText: 'Player Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter player name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter age';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _weightController,
                decoration: InputDecoration(labelText: 'Weight'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter weight';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _heightController,
                decoration: InputDecoration(labelText: 'Height'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter height';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passportController,
                decoration: InputDecoration(labelText: 'Passport'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter passport';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _contractBeginController,
                decoration: InputDecoration(labelText: 'Contract Begin'),
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter height';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _contractEndController,
                decoration: InputDecoration(labelText: 'Contract End'),
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter height';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _dopingControlController,
                decoration: InputDecoration(labelText: 'Doping Control'),
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter height';
                  }
                  return null;
                },
              ),
              SizedBox(height: 70,),
              ElevatedButton(
                child: Text('Add Player'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      players.add(Players(
                        playerName: _playerNameController.text,
                        age: int.parse(_ageController.text),
                        weight: double.parse(_weightController.text),
                        height: double.parse(_heightController.text),
                        contractBegin: DateTime.fromMillisecondsSinceEpoch(int.parse(_contractBeginController.text)),
                        contractEnd: DateTime.fromMillisecondsSinceEpoch(int.parse(_contractEndController.text)),
                        dopingControl: DateTime.fromMillisecondsSinceEpoch(int.parse(_dopingControlController.text)),
                        playerImage: 'images/player.png',
                        competition: 'Liga Portugal Bwin',
                        passport: int.parse(_passportController.text),
                        clubName: widget.clubName,
                        imageName: '',
                        ));
                    });
                      
                      Navigator.pop(context, players);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
