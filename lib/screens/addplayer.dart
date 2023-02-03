import 'package:flutter/material.dart';

class addPlayer extends StatefulWidget {
  @override
  _addPlayerScreenState createState() => _addPlayerScreenState();
}

class _addPlayerScreenState extends State<addPlayer> {
  final _formKey = GlobalKey<FormState>();
  final _playerNameController = TextEditingController();
  final _clubNameController = TextEditingController();
  final _playerImageController = TextEditingController();
  final _ageController = TextEditingController();
  final _weightController = TextEditingController();
  final _heightController = TextEditingController();
  final _contractBeginController = TextEditingController();
  final _contractEndController = TextEditingController();
  final _dopingControlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                controller: _clubNameController,
                decoration: InputDecoration(labelText: 'Club Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter club name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _playerImageController,
                decoration: InputDecoration(labelText: 'Player Image'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter player image';
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
                controller: _contractBeginController,
                decoration: InputDecoration(labelText: 'Contract Begin'),
                keyboardType: TextInputType.number,
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
                keyboardType: TextInputType.number,
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
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter height';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child: Text('Add Player'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Your message here'),
                      ),
                    );
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
